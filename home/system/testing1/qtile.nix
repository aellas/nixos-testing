{ config, pkgs, ... }:

{
  programs.qtile.enable = true;

  xdg.configFile."qtile" = {
     source = /home/array/.config/qtile;
     recursive = true;
   };


   home.packages = with pkgs; [
     qtile-extras
   ];

}