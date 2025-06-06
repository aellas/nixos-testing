{ config, pkgs, ... }:

let
  wallpaperScript = pkgs.writeShellScriptBin "startup-script" ''
    ${pkgs.xorg.xrandr}/bin/xrandr --output DP-2-3 --mode 1920x1080 --rate 239.76
    ${pkgs.xorg.xrandr}/bin/xrandr --output eDP-1 --off
    ${pkgs.gnome.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1 &
    ${pkgs.xclip}/bin/xclip &
    ${pkgs.pywal}/bin/wal -R &
    ${pkgs.dunst}/bin/dunst -config $HOME/.cache/wal/dunstrc &
    ${pkgs.networkmanagerapplet}/bin/nm-applet &
  '';
in {
  home.packages = with pkgs; [
    xclip
    dunst
    pywal
    networkmanagerapplet
    gnome.polkit_gnome
  ];

  # Run at login
  xsession.windowManager.command = "${wallpaperScript}/bin/startup-script";
}
