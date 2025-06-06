{ config, pkgs, ... }:

{

  systemd.user.services.greenclip = {
    description = "Greenclip clipboard manager";
    after = [ "graphical-session.target" ];
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.greenclip}/bin/greenclip daemon";
      Restart = "always";
      Environment = ''
        DISPLAY=:0
        XAUTHORITY=${config.home.homeDirectory}/.Xauthority
      '';
    };
  };

  home.packages = with pkgs; [
      haskellPackages.greenclip
  ];
}
