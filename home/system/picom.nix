# ~/nixos-testing/home/system/picom.nix
{ config, pkgs, ... }:

{
  services.picom = {
    enable = true; # This line enables the Picom service
    backend = "glx";
    shadow = true;
    fading = true;
  };
}