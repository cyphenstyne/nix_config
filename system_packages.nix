{ config, pkgs, ... }:
{
  # Allow unfree packages:
  nixpkgs.config.allowUnfree = true;

  # System Packages:
  environment.systemPackages = with pkgs; [
    neovim
    nano
    ghostty
    wget
    curl
    tree
    git
    fastfetch
    btop
    fzf
    pciutils
    kdePackages.plasma-browser-integration
    lshw
    vlc
  ];

  # Exclude packages from xserver packages:
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];

  # Exclude packages from KDE packages:
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    konsole
    qrca
    kate
  ];
}
