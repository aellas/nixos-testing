{ config, pkgs, ... }:

{

  wayland.windowManager.hyprland.settings = {
    bind = [
      "$modifier,Return,exec,kitty"
      "$modifier,B,exec,firefox"
      "$modifier,TAB,layoutmsg, swapwithmaster"
      "$modifier,q,killactive"
      "$modifier,m,exec,youtube-music"
      "$modifier,backslash,exec,codium"
      "$modifier,g,exec,github-desktop"
    ];

    bindm = [
      "$modifier, mouse:272, movewindow"
      "$modifier, mouse:273, resizewindow"
    ];
  };
}

