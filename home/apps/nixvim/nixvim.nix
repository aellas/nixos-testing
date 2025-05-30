{ config, pkgs, ... }:

{
  programs.nixvim = {
    # No enable = true; here
    colorschemes.oxocarbon.enable = true;
    plugins.lualine.enable = true;

    plugins.alpha = {
      # No enable = true; here either
    };

    imports = [
      ./plugins/alpha.nix
    ];
  };
}