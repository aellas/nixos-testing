{ config, pkgs, inputs, ... }:
{
  home.username = "array";
  home.homeDirectory = "/home/array";
  programs.home-manager.enable = true;

  imports = [
    ./system/display.nix
    ./apps/kitty.nix
    ./apps/fastfetch/default.nix
    ./apps/nixcord.nix
    ./apps/nixvim/nixvim.nix

    ./system/gtk.nix
    ./system/fish.nix
    ./system/picom.nix
    ./system/qtile/default.nix

 ];

    home.stateVersion = "25.11";
}
