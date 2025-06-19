{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
      fastfetch

    '';

    shellAliases = {
      ls = "ls --color=auto";
      uu = "cd /home/array/nixos-testing && sudo nixos-rebuild switch --flake .#arynix";
    };
  };
}
