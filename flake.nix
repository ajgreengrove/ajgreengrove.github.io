{
  description = "ajgreengrove.com blog & VPS deployment flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";
    deploy-rs.url = "github:serokell/deploy-rs";
    deploy-rs.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, disko, deploy-rs, ... }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;

    website = pkgs.stdenv.mkDerivation {
      name = "ajgreengrove-com-site";
      src = ./.;
      nativeBuildInputs = [ pkgs.hugo ];
      buildPhase = "hugo --minify";
      installPhase = "cp -r public $out";
    };
  in
  {
    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = with pkgs; [
        hugo
        babashka
        caddy
        deploy-rs.packages.x86_64-linux.deploy-rs
      ];
    };
    nixosConfigurations.ajg-vps-cax = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [
        disko.nixosModules.disko
        ./disko.nix
        ({ pkgs, ... }: {
          # Stage-1 initrd drivers added to fix systemd timeout for /dev/disk/by-partlabel/disk-main-root (Console Screenshot 1)
          boot.initrd.availableKernelModules = [
            # Needed for QEMU/KVM virtual PCI bus discovery (Hetzner Cloud hypervisor underlying bus)
            "virtio_pci"
            # Fallback block driver for native VirtIO virtual disks (/dev/vda)
            "virtio_blk"
            # Critical: Hetzner presents storage via SCSI emulation over VirtIO; required to expose /dev/sda controller
            "virtio_scsi"
            # Critical: SCSI disk driver; required by kernel to map /dev/sda block device nodes once virtio_scsi attaches
            "sd_mod"
            # Standard CD-ROM/ISO module for virtual media attached during kexec/rescue boots
            "sr_mod"
            # Fallback driver for SATA/AHCI controllers on bare-metal or legacy VM hypervisors
            "ahci"
          ];

          # Bootloader configuration
          boot.loader.grub = {
            enable = true;
            efiSupport = true;
            efiInstallAsRemovable = true;
            device = "nodev";
          };
          boot.loader.efi.canTouchEfiVariables = false;

          users.mutableUsers = false;

          nix.gc = {
            automatic = true;
            dates = "weekly";
            options = "--delete-older-than 14d";
          };

          networking.hostName = "ajg-vps-cax";

          # --- NETWORKING FOR HETZNER ---
          networking.useDHCP = true;

          networking.interfaces.enp1s0 = {
            ipv6.addresses = [
              {
                address = "2a01:4f8:c015:2ca5::1";
                prefixLength = 64;
              }
            ];
          };

          networking.defaultGateway6 = {
            address = "fe80::1";
            interface = "enp1s0";
          };

          # Explicitly permit SSH traffic through the NixOS default firewall
          networking.firewall.allowedTCPPorts = [ 22 80 443 ];
          # ------------------------------------

          # Fail2ban intrusion prevention
          services.fail2ban = {
            enable = true;
            maxretry = 5;
            bantime = "24h";
            bantime-increment = {
              enable = true;
              multipliers = "1 2 4 8 16 32 64";
              maxtime = "168h";
            };
          };

          # OpenSSH configuration
          services.openssh = {
            enable = true;
            settings = {
              PermitRootLogin = "yes";
              # if true, enables fallback debugging via Hetzner Console
              PasswordAuthentication = false;
            };
          };

          users.users.root.openssh.authorizedKeys.keys = [
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBQ0ra2SsGHEImlxNPM6Cc2Gz7Q4EXM3kakap+dPSmTU ajg-vps"
          ];

          services.caddy = {
            enable = true;
            configFile = pkgs.writeText "Caddyfile" ''
              ajgreengrove.com {
                root * ${website}
                file_server
                encode gzip zstd
          
                header {
                  X-Content-Type-Options "nosniff"
                  X-Frame-Options "DENY"
                  Referrer-Policy "strict-origin-when-cross-origin"
                }
          
                handle_errors {
                  rewrite * /404.html
                  file_server
                }
              }
          
              www.ajgreengrove.com {
                redir https://ajgreengrove.com{uri} permanent
              }
            '';
          };

          system.stateVersion = "24.11";
        })
      ];
    };

    deploy.nodes.ajg-vps-cax = {
        hostname = "91.98.218.123";
        profiles.system = {
          user = "root";
          sshUser = "root";
          # Target arch (aarch64): wrapper binary executes directly on remote node via SSH.
          path = deploy-rs.lib.aarch64-linux.activate.nixos self.
  nixosConfigurations.ajg-vps-cax;
          sshOpts = [ "-i" "/home/ajg/.ssh/id_ed25519_vps" ];
        };
    };
    apps.x86_64-linux = {
      default = deploy-rs.apps.x86_64-linux.deploy-rs;
      deploy-rs = deploy-rs.apps.x86_64-linux.deploy-rs;
    };
  };
}
