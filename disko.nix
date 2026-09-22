{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        # Default disk device path on standard cloud VPS hosts (Hetzner, Linode, DigitalOcean).
        # Override via command line or change to /dev/vda / /dev/nvme0n1 if required by provider.
        device = "/dev/sda";
        content = {
          type = "gpt";
          partitions = {
            boot = {
              size = "1M";
              type = "EF02"; # BIOS boot partition for GRUB on MBR/GPT cloud nodes
            };
            ESP = {
              size = "512M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };
            root = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
              };
            };
          };
        };
      };
    };
  };
}
