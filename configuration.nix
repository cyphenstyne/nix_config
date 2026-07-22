{ config, pkgs, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./user_config_and_user_packages.nix
      ./system_packages.nix
      ./bootloader_config.nix
      ./network_config.nix
      ./locale_config.nix
      ./podman_and_docker.nix
      ./nvidia_config.nix
      ./timezone_config.nix
      ./bluetooth_config.nix
      ./opengl_config.nix
      ./services.nix
      ./virtualization_config.nix
      ./font_config.nix
      ./kde_stuff.nix
      #./gnome_stuff.nix
    ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05";
}
