---
title: "Fixing libcublas.so.12 in faster-whisper (#717): Nix-Built Docker Containers without 20-Minute Compiles"
date: 2026-09-20T10:00:00+03:00
draft: false
tags: [""]
categories: [""]
table_of_contents_render: false
---

As documented in [SYSTRAN/faster-whisper #717](https://github.com/SYSTRAN/faster-whisper/issues/717), upgrading faster-whisper can trigger runtime crashes like libcublas.so.12 is not found or cannot be loaded. This forces developers to imperatively hack: manually appending .venv site-packages to LD_LIBRARY_PATH or pulling heavy CUDA base images. However, solving this declaratively in Nix often leads to a second trap: turning on global CUDA support flags that bypass pre-built binary caches and trigger multi-gigabyte source builds. By using Nix strictly at build-time to emit a layered OCI container, we resolve the dynamic linking crash declaratively—producing a standard Docker image that runs on any NVIDIA-equipped host without requiring Nix at runtime.

## Executive Telemetry & Verification Proofs

### Local Runner (`act` linux/amd64)
- **`nix build .#dockerImage`:** 9m 24s
- **`docker load < result`:** 54s
- **`docker run --rm faster-whisper:latest`:** 612ms

### Remote GitHub Actions (`ubuntu-latest`)
- **Initial Remote Run [#35459761178](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35459761178):** 9m 4s
  - **`build-and-validate` Job [#105941397356](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35459761178/job/105941397356):** 8m 59s
- **Cold Cache Run [#35460471844](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35460471844):** 21m 54s
  - **`build-and-validate` Job [#105943295370](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35460471844/job/105943295370):** 21m 50s
- **Cached Run [#35461703995](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35461703995):** 2m 26s
  - **`build-and-validate` Job [#105946615254](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35461703995/job/105946615254):** 2m 23s

## Symptoms, Root Causes and Remediations

- Symptom: `Library libcublas.so.12 is not found or cannot be loaded` | Root Cause: CTranslate2 dynamic linker missing explicit user-space CUDA runtime shared library paths | Remediation: Package unfree user-space `pkgs.cudaPackages.*` derivations into container layers with explicit entrypoint `LD_LIBRARY_PATH` injection
- Symptom: Local compilation triggered for `magma` and `opencv` | Root Cause: Global `config.cudaSupport = true` invalidating Nixpkgs Hydra binary cache substituters | Remediation: Remove top-level `cudaSupport = true` and import target user-space `cudaPackages` explicitly with `allowUnfree = true`
- Symptom: `error: sphinx-9.1.0 not supported for interpreter python3.11` | Root Cause: `python311Packages` evaluating an incompatible `sphinx` derivation via the `pyopenssl -> trustme -> anyio` dependency tree in `nixpkgs-unstable` | Remediation: Migrate Python packaging context from `python311Packages` to default `python3Packages` (Python 3.13)

## Implementation Artifacts

```nix
pkgs = import nixpkgs {
  inherit system;
  config = {
    allowUnfree = true;
-   cudaSupport = true;
  };
};
```

```nix
- pythonPackages = pkgs.python311Packages;
+ pythonPackages = pkgs.python3Packages;
```

```nix
runtimeLibs = [
  pkgs.stdenv.cc.cc.lib
  pkgs.glibc
  pkgs.zlib
  pkgs.ffmpeg-headless
  pkgs.libsndfile
+ pkgs.cudaPackages.cudatoolkit
+ pkgs.cudaPackages.cudnn
+ pkgs.cudaPackages.libcublas
+ pkgs.cudaPackages.libcufft
+ pkgs.cudaPackages.libcurand
];
```

## Platform Rules of Engagement

- Prohibit blanket `cudaSupport = true` in Nixpkgs configuration imports; restrict CUDA dependencies strictly to modular user-space closures under `pkgs.cudaPackages.*` with `config.allowUnfree = true`.
- Terminate any evaluation immediately if Hydra cache misses trigger local source compilation of heavy upstream binaries (`magma`, `torch`, `opencv`).
- Enforce pre-build ephemeral validation: execute `nix eval` for derivation integrity and `nix develop --command <interpreter>` for import verification prior to initiating container builds.
- Gate serialization via `nix build .#dockerImage --dry-run` to verify that execution consists exclusively of pre-cached closures and lightweight image layer synthesis.
- Exclude host-bound driver files from image rootfs; isolate host driver compatibility strictly to runtime `LD_LIBRARY_PATH` fallbacks within wrapper scripts.

## Local Reproduction Sequence

```bash
# Ensure .gitignore does not untrack flake.nix, source code, or required assets
git add -N .
nix flake check
nix eval .#dockerImage.drvPath
nix develop --command python3 -c "import faster_whisper; print('Import OK:', faster_whisper.__file__)"
nix build .#dockerImage --dry-run
nix build .#dockerImage
docker load < result
docker run --rm faster-whisper:latest
act -j build-and-validate --container-architecture linux/amd64
gh repo set-default ajgreengrove/faster-whisper-ci-poc
gh run watch 35461703995
```

---

## Reproduction & Performance Benchmark

The libcublas.so.12 failure in #717 stems from dynamic linking mismatch across runtime environments. While manual shell exports or heavy base images temporarily bypass the crash, they break environment reproducibility. Decoupling user-space CUDA runtime libraries from top-level Nix compiler flags fixes the library path cleanly—packaging the environment into a lightweight Docker image that stays fast, deterministic, and cache-friendly.

- **Reproduction Repository:** [github.com/ajgreengrove/faster-whisper-ci-poc](https://github.com/ajgreengrove/faster-whisper-ci-poc)
- **Verified CI Execution:** Workflow Run [#35461703995](https://github.com/ajgreengrove/faster-whisper-ci-poc/actions/runs/35461703995) (2m 26s completed runtime)
- **Inquiries & Architecture Advisory:** `contact@ajgreengrove.com`

