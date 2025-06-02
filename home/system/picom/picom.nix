{ config, pkgs, lib, ... }: 

let
   picomConfPath = "./picom.conf";
in
{
  services.picom.enable = true;
  services.picom.settings = lib.literalExpression (builtins.readFile picomConfPath);

}