{ config, pkgs, lib, ... }:
{
  services.greenclip = {
    enable = true;
    package = pkgs.haskellPackages.greenclip;
    # Add this line:
    wantedBy = [ "graphical-session.target" ];  };
}