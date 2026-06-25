+++
title = "Nix OS Installation: filesystems, partitions, formats, mounts"
author = ["A J Greengrove"]
date = 2026-03-15T13:41:00+02:00
categories = ["NixOS"]
draft = false
featured_image = "/images/guitar-campfire-stories-game-music-pack-feature.webp"
tableofcontents = true
+++

"A technical guide to implementing a manual NixOS installation on Btrfs. This post covers subvolume hierarchy design, optimized mount flags for low-latency I/O, and the engineering rationale for an immutable, snapshot-ready Pro-Audio workstation."

## Storage: Btrfs vs. Ext4

[PROSE_PLACEHOLDER: Rationale]
*One sentence:* Btrfs is selected over Ext4 to facilitate atomic system snapshots, enabling immediate restoration to a known-good, bit-identical state if real-time kernel experiments or audio driver updates introduce system instability.

| Feature         | Ext4                | Btrfs                               |
| :-------------- | :------------------ | :---------------------------------- |
| Snapshots       | None                | Native (Atomic/Subvolume-based)     |
| Integrity       | Metadata checksums  | Data + Metadata checksums           |
| Reproducibility | Passive             | Active (Enables state rollbacks)    |
| Performance     | Lowest CPU overhead | Slight CoW overhead (Negligible)     |
| Flexibility     | Rigid partitioning  | Dynamic subvolume management        |

## Implementation: Partitioning & Subvolume Setup

* **Pre-requisite**: Remove vendor/OEM telemetry partitions.
* **Partition 1 (p1)**: 1G EFI (FAT32) — Accommodates multi-kernel requirements.
* **Partition 2 (p2)**: Remainder (Btrfs) — Defined by dynamic subvolumes.

Wipe existing signatures and define fresh GPT table:

`wipefs -a /dev/nvme0n1`

Verify with lsblk:

`lsblk`

[PROSE_PLACEHOLDER: Description]
*One sentence:* While disk layout standardization via declarative tools like `disko` remains the eventual goal, an explicit, verifiable Btrfs subvolume hierarchy is implemented for this manual installation.

## Format partitions

Format the EFI partition and the primary Btrfs root:

`mkfs.vfat -F 32 -n EFI /dev/nvme0n1p1`

`mkfs.btrfs -L NIXOS /dev/nvme0n1p2`

## Technical Rationale: Filesystem Tuning

[PROSE_PLACEHOLDER: Subvolume Logic]
*One sentence:* Isolation of the /nix store from the root filesystem via subvolumes prevents snapshot bloat while ensuring user data and system state remain independently recoverable.

| Subvolume | Path | Logic |
| :-------- | :--- | :--------------------------------------- |
| root      | /    | Ephemeral system state (Snapshot-ready)  |
| home      | /home| Persistent user data                     |
| nix       | /nix | Excluded from root snapshots to save I/O |
| persist   | /pers| Sovereign data persistence               |

[PROSE_PLACEHOLDER: Description]
*One sentence:* Optimizing mount flags and subvolume isolation ensures filesystem behavior as a predictable, high-performance component within the real-time audio pipeline.

Mount Options:

* **compress=zstd**: Provides an optimal balance between compression ratio and speed; reduction of write amplification on NVMe drives extends hardware longevity without increasing CPU overhead for Csound or sample streaming.
* **noatime**: Disables metadata write operations during file reads; this prevents microscopic latency spikes (jitter) by eliminating unnecessary timestamp updates within the I/O stream.

Subvolume Isolation:

* **root**: Ephemeral and snapshot-ready; permits instant rollbacks if kernel updates or audio driver changes introduce Xruns.
* **nix**: Excluded from snapshots; high volatility and size render this subvolume unnecessary for recovery, as the Nix store manages state through an immutable, hash-based architecture.
* **home**: Persistent storage for user data; decoupling ensures project files and audio samples remain intact during system-level refreshes.
* **persist**: Dedicated container for state intended to outlive the ephemeral `root` filesystem, enabling "Zero-Drift" system implementations.

## Creating subvolumes

[PROSE_PLACEHOLDER: Description]
*One sentence:* The top-level Btrfs volume must be mounted temporarily to define the subvolume structure that will isolate system, user, and nix store data.

Mount the top-level volume to define the subvolume structure:

`mount /dev/nvme0n1p2 /mnt`

`btrfs subvolume create /mnt/root`

`btrfs subvolume create /mnt/home`

`btrfs subvolume create /mnt/nix`

`btrfs subvolume create /mnt/persist`

Unmount to prepare for final configuration:

`umount /mnt`

## Mounting with Optimized Flags

[PROSE_PLACEHOLDER: Description]
*One sentence:* The root subvolume is mounted as the primary system branch, after which individual persistent mount points must be created and populated with their respective subvolumes.

Subvolumes are mounted with compression and `noatime` parameters to minimize I/O jitter within the audio processing workload.

`mount -o subvol=root,compress=zstd,noatime /dev/nvme0n1p2 /mnt`

`mkdir -p /mnt/{boot,home,nix,persist}`

`mount /dev/nvme0n1p1 /mnt/boot`

`mount -o subvol=home,compress=zstd,noatime /dev/nvme0n1p2 /mnt/home`

`mount -o subvol=nix,compress=zstd,noatime /dev/nvme0n1p2 /mnt/nix`

`mount -o subvol=persist,compress=zstd,noatime /dev/nvme0n1p2 /mnt/persist`

Verify the layout:

`mount | grep /mnt`

## Generate configuration

`nixos-generate-config --root /mnt`

Tip: Edit /mnt/etc/nixos/hardware-configuration.nix immediately to verify that `fileSystems` declarations align with the configured subvolume mount options.

## Engineering Philosophy: Pro-Audio NixOS

[PROSE_PLACEHOLDER: Description]
*One sentence:* Framing the installation as a "Sovereign Build" reinforces the transition from patching an OS to declaratively defining one.

Architectural principles for low-latency audio stacks:

* **Subvolume Isolation**: Utilizing /root, /nix, /home, and /persist subvolumes maintains a sovereign, recoverable build environment.
* **Zero-Drift Architecture**: System state is defined declaratively; failures in the audio stack are resolved via declaration reverts or Btrfs subvolume rollbacks rather than live system patching.
* **The Headless Advantage**: Utilization of a minimal installation eliminates background bloat, prioritizing a kernel-centric machine optimized for low-latency audio processing.

title = "Nix OS Installation: Internet Considerations for Pro-Audio setup"
1st paragraph = summary / description = "Blah"

## Networking: Defining the Periphery

[PROSE_PLACEHOLDER: Description]
*One sentence:* By shifting the networking stack from an "active, polling service" to a "static, defined interface," system background noise is reduced, ensuring stability for real-time audio tasks.

## The Adversary-Control Stack

In a pro-audio environment, high-frequency polling from traditional network managers acts as an adversary to the real-time buffer. The system is defined using `systemd-networkd` and `iwd` to enforce a static, "manual-only" connectivity policy.

[GRAPHVIZ_PLACEHOLDER: Architecture of static network interfaces vs. polling-based network management]

## Implementation: Interface Hard-Blocking

To guarantee the audio-compute engine remains free from discovery-based jitter, Wi-Fi interfaces are configured in a dormant state at boot. Connectivity is only established when explicitly invoked.

Configure the network stack in `configuration.nix`:

`networking.useNetworkd = true;`

`networking.wireless.iwd.enable = true;`

`systemd.network.enable = true;`

Enforce manual activation for wireless interfaces:

`systemd.network.networks."10-wlan" = { matchConfig.Name = "wlan*"; linkConfig.ActivationPolicy = "manual"; };`

Verify the interface status:

`networkctl status`

`ip link show`

## Engineering Philosophy: The No-Later Policy

[PROSE_PLACEHOLDER: Description]
*One sentence:* Every tool and system state is declared during the initial build to eliminate the "configuration drift" associated with imperative package management.

## Base Environment Declaration

The system environment is defined immediately. Essential utilities for remote debugging or configuration management are included in the base build, ensuring the system is functional from the first boot.

Include core utilities in `configuration.nix`:

`environment.systemPackages = with pkgs; [ neovim git wget ];`

Enable experimental features to support Flake-based development:

`nix.settings.experimental-features = [ "nix-command" "flakes" ];`

Verify the system state:

`nix-shell -p nix-info --run "nix-info -m"`


