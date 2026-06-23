#### Make physical partitions of the whole drive:
- sudo cfdisk <disk_drive>

#### Attach the filesystems:
- sudo mkfs.vfat -F 32 -n boot <efi_system_partition>
- sudo mkswap -L swap <swap_partition>
- sudo swapon <swap_partition>
- sudo mkfs.btrfs -L nixos <btrfs_partition>

#### Create Subvolumes:
- sudo mount <btrfs_partition> /mnt
- sudo btrfs subvolume create /mnt/@
- sudo btrfs subvolume create /mnt/@home
- sudo btrfs subvolume create /mnt/@nix
- sudo umount /mnt

#### Mount the Subvolume Architecture:
##### Mount Root:
- sudo mount -o subvol=@,compress=zstd,noatime <btrfs_partition> /mnt
##### Create target directories
- sudo mkdir -p /mnt/{boot,home,nix}
##### Mount remaining subvolumes and EFI partition
- sudo mount -o subvol=@home,compress=zstd,noatime <btrfs_partition> /mnt/home
- sudo mount -o subvol=@nix,compress=zstd,noatime <btrfs_partition> /mnt/nix
- sudo mount <efi_system_partition> /mnt/boot

#### Generate Hardware Configurations:
- sudo nixos-generate-config --root /mnt

#### Open /etc/nixos/configuration.nix and replace it with your custom config.
- sudo nixos-install
- reboot
