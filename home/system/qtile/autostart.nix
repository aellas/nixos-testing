{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    xorg.xrandr
    polkit-gnome 
    xclip
    pywal 
    dunst
    networkmanagerapplet
    haskellPackages.greenclip
  ];

  systemd.user.services.array-autostart = {
    description = "Array's personal autostart script";
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    script = ''
      export PATH="${pkgs.xorg.xrandr}/bin:${pkgs.polkit-gnome}/bin:${pkgs.xclip}/bin:${pkgs.pywal}/bin:${pkgs.dunst}/bin:${pkgs.networkmanagerapplet}/bin:$PATH"

      ${pkgs.xorg.xrandr}/bin/xrandr --output DP-2-3 --mode 1920x1080 --rate 239.76
      ${pkgs.xorg.xrandr}/bin/xrandr --output eDP-1 --off

      ${pkgs.xclip}/bin/xclip &
      ${pkgs.haskellPackages.greenclip}/bin/greenclip daemon
      ${pkgs.pywal}/bin/wal -R &
      ${pkgs.dunst}/bin/dunst -config ${config.xdg.cacheHome}/wal/dunstrc &
      ${pkgs.networkmanagerapplet}/bin/nm-applet &

      wait 
    '';

    serviceConfig = {
      Type = "simple";
      Restart = "on-failure";
    };
  };

  # Make sure the dunst config path is managed by home-manager if possible
  xdg.cacheHome = "~/.cache"; # Ensure this is set or adjust the path for dunstrc
}