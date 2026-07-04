{ config, pkgs, ... }:
{
  # Nvidia Graphics stuff:
  services.xserver.videoDrivers = [
    "nvidia"
    "modesetting"
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable; # check out "https://nixos.wiki/wiki/Nvidia" for options
    powerManagement.enable = false;
    powerManagement.finegrained = true;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      amdgpuBusId = "PCI:4:0:0"; # replace with your actual ID, btw these ARE my actual bus id
      nvidiaBusId = "PCI:1:0:0"; # replace with your actual ID, btw these ARE my actual bus id
    };
  };
}
