{ config, pkgs, ... }:
{
  # System Packages:
  environment.systemPackages = with pkgs; [
    gnome-tweaks
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

