{ config, lib, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    vsync = true;
    vSyncHelper = "opengl"; # This is the equivalent for glx-use-copysubbuffer-mesa and glx-copy-from-front
    # glx-copy-from-front and glx-swap-method are not directly transferable in the same way.
    # vSyncHelper = "opengl" handles a lot of the GLX specific synchronization.
    xrenderSync = true;
    xrenderSyncFence = true;

    # Corners
    roundedCorners = true;
    cornerRadius = 6;
    roundedCornersExclude = [
      "class_g = 'i3-frame'"
      "class_g = 'rofi'"
      "name = 'Notification'"
      "window_type = 'dock'"
      "window_type = 'desktop'"
    ];
    detectRoundedCorners = true;

    # Blur
    blurMethod = "dual_kawase";
    blurSize = 8;
    blurStrength = 6;
    blurBackground = true;
    blurBackgroundFrame = false;
    blurKern = "3x3box";
    blurBackgroundExclude = [
      "window_type = 'Polybar'"
      "window_type = 'desktop'"
      "window_type = 'dock'"
      "role = 'xborder'"
      "class_g = 'Conky'"
      "name = 'Notification'"
      "_GTK_FRAME_EXTENTS"
    ];

    # Shadows
    shadow = true;
    shadowRadius = 20;
    shadowOffsetX = -17;
    shadowOffsetY = -17;
    shadowOpacity = 0.4;
    shadowColor = "#000000";

    # Fading
    fading = true;
    fadeInStep = 0.04;
    fadeOutStep = 0.04;
    fadeDelta = 10;
    fadeTime = 200;
    fadeDuration = 300;
    noFadingOpenclose = true;
    noFadingDestroyedArgb = true;

    # Wintypes
    wintypes = {
      tooltip = {
        fade = true;
        shadow = true;
        opacity = 0.75;
        focus = true;
        fullShadow = false;
      };
      dock = {
        shadow = false;
        clipShadowAbove = true;
      };
      dnd = {
        shadow = false;
      };
      popupMenu = {
        opacity = 1.0;
      };
      dropdownMenu = {
        opacity = 1.0;
      };
    };
  };
}