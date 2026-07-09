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
    vlc
    lshw
  ];

  # Exclude packages from xserver packages:
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
