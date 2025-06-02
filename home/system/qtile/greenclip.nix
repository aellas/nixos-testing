{ config, pkgs, ... }:
{
services.greenclip = {
  enable = true;
  package = pkgs.haskellPackages.greenclip
 };
  systemd.user.services.greenclip-daemon = {
    enable = true;
    description = "Greenclip Clipboard Daemon";
    ServiceConfig = {
      ExecStart = "${pkgs.greenclip}/bin/greenclip daemon"; # Adjust path if greenclip is not in default path
      Restart = "on-failure";
      RestartSec = 5;
    };
    WantedBy = [ "graphical-session.target" ];
  };
}