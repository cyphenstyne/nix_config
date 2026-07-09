{ config, pkgs, ... }:
{
  # Starts ssh agent: remove this if using gnome
  #programs.ssh.startAgent = true;

  # Enable the KDE Plasma Desktop Environment:
  #services.displayManager.plasma-login-manager.enable = true;
  #services.desktopManager.plasma6.enable = true;

  # Enable the GNOME Desktop Environment:
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

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
