# ~/.config/home-manager/autostart.nix
{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
      xorg.xrandr
  ];

  # 2. XRandR configuration via autorandr module
  programs.autorandr = {
    enable = true;
    profiles = {
      "laptop" = {
        setup = ''
          ${pkgs.xorg.xrandr}/bin/xrandr --output eDP-1 --mode 1920x1080 --rate 60
          ${pkgs.xorg.xrandr}/bin/xrandr --output DP-2-3 --off
        '';
        # fingerprint = { "eDP-1" = ""; }; # Optional, based on `autorandr --fingerprint`
      };
      "docked" = {
        setup = ''
          ${pkgs.xorg.xrandr}/bin/xrandr --output DP-2-3 --mode 1920x1080 --rate 239.76 --pos 0x0
          ${pkgs.xorg.xrandr}/bin/xrandr --output eDP-1 --off
        '';
        # fingerprint = { "DP-2-3" = ""; "eDP-1" = ""; }; # Optional
      };
    };
    default = "laptop";
  };

    serviceConfig = {
      Type = "simple";
      Restart = "on-failure";
    };
}