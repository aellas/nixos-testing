{
systemd.user.services.clipmenu = {
  description = "Clipboard management daemon";
  after = [ "graphical-session.target" ]; # start after GUI is up
  wantedBy = [ "default.target" ];        # start on user session start

  serviceConfig = {
    ExecStart = "${pkgs.clipmenu}/bin/clipmenud --quiet";
    Restart = "on-failure";

    # Set X11 environment
    Environment = ''
      DISPLAY=:0
      XAUTHORITY=/tmp/xauth_jahUsn
    '';
  };

  enable = true;
};
}
