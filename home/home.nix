{ config, pkgs, inputs, ... }:
{
  home.username = "array";
  home.homeDirectory = "/home/array";
  programs.home-manager.enable = true;

  imports = [
    ./apps/kitty.nix
    ./apps/ghostty.nix
    ./apps/neovim.nix
    ./apps/fastfetch/default.nix
    ./apps/nixcord.nix
    ./apps/yazi/default.nix
    ./apps/rofi.nix
    ./apps/firefox.nix
    ./apps/rmpc.nix

    ./system/gtk.nix
    ./system/picom/picom.nix
    ./system/qtile.nix
    ./system/mpd.nix
 ];
    home.stateVersion = "25.11";
}
