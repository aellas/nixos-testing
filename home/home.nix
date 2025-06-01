{ config, pkgs, inputs, ... }:
{
  home.username = "array";
  home.homeDirectory = "/home/array";
  programs.home-manager.enable = true;

  imports = [
    ./apps/kitty.nix
    ./apps/fastfetch/default.nix
    ./apps/nixcord.nix
    ./system/fish.nix
    ./system/hyprland/default.nix
    ./system/waybar.nix
    ./apps/nixvim/nixvim.nix
    ./system/qtile/default.nix
  ];

    home.stateVersion = "25.11";
}
