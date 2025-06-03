{ config, pkgs, ... }:

{

  services.clipmenu = {
    enable = true;
    launcher = "${pkgs.rofi}/bin/rofi -dmenu";
  };

  home.packages = with pkgs; [
    rofi
    xclip 
  ];

}