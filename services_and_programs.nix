{ config, pkgs, ... }:
{
  # Starts ssh agent: disable if using gnome, if using kde enable
  programs.ssh.startAgent = true;

  # Game mode:
  programs.gamemode.enable = true;

  # Enable the KDE Plasma Desktop Environment:
  services.displayManager.plasma-login-manager.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Enable the GNOME Desktop Environment:
  #services.displayManager.gdm.enable = true;
  #services.desktopManager.gnome.enable = true;
  #services.udev.packages = with pkgs; [ gnomeExtensions.appindicator ];

  # Enable CUPS to print documents:
  services.printing.enable = true;

  # Enable sound with pipewire:
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Enable flatpak:
  services.flatpak.enable = true;
}
