{ config, pkgs, ... }:
{
  # Bootloader:
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev";
    #useOSProber = true; # Optional, detects other OSes
  };
  
  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot";
  };
  
  # Use latest kernel:
  boot.kernelPackages = pkgs.linuxPackages; # add "_latest" to use stable kernel
}
