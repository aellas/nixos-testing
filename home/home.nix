{ config, pkgs, ... }:

{
  home.username = "array";
  home.homeDirectory = "/home/array";
  programs.home-manager.enable = true;

  imports = [
    ./apps/kitty.nix
    ./apps/fastfetch/default.nix
    ./apps/nixcord.nix
    ./system/fish.nix
    ./apps/nixvim/nixvim.nix
  ];

    home.stateVersion = "25.11";
}
