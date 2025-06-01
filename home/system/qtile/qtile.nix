{ config, pkgs, ... }:

{
  programs.qtile.enable = true;

  xdg.configFile."qtile" = {
     source = /home/array/.config/qtile/; # Assuming your config files are in a 'src' directory
     recursive = true;
   };


   home.packages = with pkgs; [
     qtile-extras
   ];

}