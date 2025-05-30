{ config, pkgs, ... }:

{

  wayland.windowManager.hyprland.settings = {
    bind = [
      "$modifier,Return,exec,kitty"
      "$modifier,B,exec,firefox"
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

