{ config, pkgs, lib, ... }:
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
      chafa
      qbittorrent
    ];
  };

  # Programs:

  # Starts ssh agent: disable if using gnome, if using kde enable
  programs.ssh.startAgent = true;

  # Game mode:
  programs.gamemode.enable = true;

  # fish shell:
  programs.fish.enable = true;

  # Chromium:
  programs.chromium = {
    enable = true;
    enablePlasmaBrowserIntegration = true; # disable in gnome, enable in kde
  };

  # Steam:
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-unwrapped"
  ];
}
