{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    corefonts
    nerd-fonts.space-mono
    nerd-fonts.jetbrains-mono
  ];

  # Force the system to use these fonts as defaults
  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [ "Liberation Serif" "Noto Serif" ];
      sansSerif = [ "Liberation Sans" "Noto Sans" ];
      monospace = [ "JetBrainsMono Nerd Font" "SpaceMono Nerd Font" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
