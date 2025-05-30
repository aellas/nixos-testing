{ config, pkgs, ...}: let
  inherit
    (import ./variables.nix)
    browser
    terminal
    ;
in {

  wayland.windowManager.hyprland.settings = {
    bind = [
      "$modifier,Return,exec,${terminal}"
      "$modifier,B,exec,${terminal}"
      "$modifier,D,discord"
      "$modifier,M,youtube-music"
      "$modifier,TAB,layoutmsg, swapwithmaster"
      "$modifier,G,github-desktop"

    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}

