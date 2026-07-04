{ config, pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with $passwd.
  users.users."cyphenstyne" = {
    isNormalUser = true;
    description = "cyphenstyne";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "docker" ];
    shell = pkgs.fish;
    # List packages that should be installed for this user:
    packages = with pkgs; [
      netbeans
      chromium
      zed-editor
      tmux
      easyeffects
      alsa-utils
      libreoffice-fresh
      krita
      distrobox
      kdePackages.kclock
      kdePackages.kcalc
      kdePackages.plasma-browser-integration
    ];
  };

  # fish shell:
  programs.fish.enable = true;

  programs.chromium = {
    enable = true;
    enablePlasmaBrowserIntegration = true; # Links the native messaging host
  };

}
