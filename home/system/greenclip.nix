{ config, pkgs, ... }:

let
  greenclipWrapped = pkgs.writeShellScriptBin "greenclip-wrapper" ''
    for i in $(seq 1 20); do
      if [ -n "$DISPLAY" ] && [ -n "$XAUTHORITY" ] && ${pkgs.xorg.xprop}/bin/xprop -root >/dev/null 2>&1; then
        break
      fi
      sleep 0.5
    done

    exec ${pkgs.greenclip}/bin/greenclip daemon
  '';
in {
  home.packages = with pkgs; [
    greenclip
    xclip
    greenclipWrapped
  ];

  systemd.user.services.greenclip = {
    Enable = true;
    Description = "Greenclip clipboard manager (wrapped for X11)";
    After = [ "graphical-session.target" ];
    WantedBy = [ "graphical-session.target" ];

    Service = {
      ExecStart = "${greenclipWrapped}/bin/greenclip-wrapper";
      Restart = "on-failure";

      Environment = [
        "DISPLAY=:0"
      ];
    };
  };
}
