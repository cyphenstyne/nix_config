{ config, pkgs, ... }:
{
  # System Packages:
  environment.systemPackages = with pkgs; [
    kdePackages.kclock
    kdePackages.kcalc
    kdePackages.plasma-browser-integration
  ];

  # Exclude packages from KDE packages:
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    konsole
    qrca
    kate
  ];
}
