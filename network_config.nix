{ config, pkgs, ... }:
{
  # Hostname:
  networking.hostName = "Demona";

  # Enable networking:
  networking.networkmanager.enable = true;

  # Some network settings:
  networking.enableIPv6 = false;
  networking.networkmanager.dns = "none";

  # Custom DNS:
  networking.nameservers = [
    "1.1.1.1"                  # Cloudflare IPv4 (primary)
    "1.0.0.1"                  # Cloudflare IPv4 (secondary)
    "2606:4700:4700::1111"     # Cloudflare IPv6
    "2606:4700:4700::1001"     # Cloudflare IPv6
    "8.8.8.8"                  # Google IPv4 (fallback)
    "8.8.4.4"                  # Google IPv4 (fallback)
    "2001:4860:4860::8888"     # Google IPv6 (fallback)
    "2001:4860:4860::8844"     # Google IPv6 (fallback)
  ];
}
