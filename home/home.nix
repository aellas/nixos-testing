{ config, pkgs, inputs, ... }:
{
  home.username = "array";
  home.homeDirectory = "/home/array";
  programs.home-manager.enable = true;

  imports = [
    ./apps/kitty.nix
    ./apps/fastfetch/default.nix
    ./apps/nixcord.nix
    ./apps/thunar.nix
    ./apps/nixvim/nixvim.nix

    ./system/picom.nix
    ./system/gtk.nix
    ./system/fish.nix


 ];

    home.stateVersion = "25.11";
}
