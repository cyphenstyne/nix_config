{ config, pkgs, ... }:
{
  # Docker:
  virtualisation.docker.enable = true;

  # Podman:
  virtualisation.podman = {
    enable = true;
    defaultNetwork.settings.dns_enabled = true;
  };
}
