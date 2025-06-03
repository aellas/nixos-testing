{pkgs, ...}:
{
  systemd.user.services.greenclip = {
    description = "Greenclip clipboard manager";
    wantedBy = [ "default.target" ];  # start at login
    after = [ "graphical-session.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.greenclip}/bin/greenclip daemon";
      Restart = "on-failure";
      Environment = ''
        DISPLAY=:0
        XAUTHORITY=/tmp/xauth_jahUsn
      '';
    };
    enable = true;
  };
}
