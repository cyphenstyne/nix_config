{ config, pkgs, ... }:
{
  # System Packages:
  environment.systemPackages = with pkgs; [
    gnome-tweaks
    dconf-editor
    gnomeExtensions.appindicator
    gnomeExtensions.easyeffects-preset-selector
  ];

  environment.gnome.excludePackages = with pkgs; [
    gnome-contacts
    gnome-maps
    simple-scan
    gnome-console
    epiphany
    gnome-system-monitor
    gnome-connections
    gnome-music
    decibels
    showtime
    gnome-shell-extensions
  ];
}

