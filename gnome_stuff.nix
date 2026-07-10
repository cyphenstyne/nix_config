{ config, pkgs, ... }:
{
  # System Packages:
  environment.systemPackages = with pkgs; [
    gnome-tweaks
    dconf-editor
    gnomeExtensions.easyeffects-preset-selector
    gnomeExtensions.user-themes
    gnomeExtensions.blur-my-shell
    gnomeExtensions.dash-to-dock
    gnomeExtensions.color-picker
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

