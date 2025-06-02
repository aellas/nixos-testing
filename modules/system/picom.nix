{ config, lib, pkgs, ... }:

{
  services.picom = {
    enable = true;
    settings = {
      backend = "glx";
      vsync = true;
      vSyncHelper = "opengl"; # This is the equivalent for glx-use-copysubbuffer-mesa and glx-copy-from-front
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

      # Animation Settings
      animations = [
        {
          triggers = [ "close" "hide" ];
          properties = {
            opacity = {
              curve = "linear";
              duration = 0.1;
              start = "window-raw-opacity-before";
              end = 0;
            };
            blurOpacity = "opacity";
            shadowOpacity = "opacity";
          };
        }
        {
          triggers = [ "open" "show" ];
          properties = {
            opacity = {
              curve = "cubic-bezier(0,1,1,1)";
              duration = 0.3;
              start = 0;
              end = "window-raw-opacity";
            };
            blurOpacity = "opacity";
            shadowOpacity = "opacity";
            offsetX = "(1 - scale-x) / 2 * window-width";
            offsetY = "(1 - scale-y) / 2 * window-height";
            scaleX = {
              curve = "cubic-bezier(0,1.3,1,1)";
              duration = 0.3;
              start = 0.6;
              end = 1;
            };
            scaleY = "scale-x";
            shadowScaleX = "scale-x";
            shadowScaleY = "scale-y";
            shadowOffsetX = "offset-x";
            shadowOffsetY = "offset-y";
          };
        }
        {
          triggers = [ "geometry" ];
          properties = {
            scaleX = {
              curve = "cubic-bezier(0,0,0,1.28)";
              duration = 0.22;
              start = "window-width-before / window-width";
              end = 1;
            };
            scaleY = {
              curve = "cubic-bezier(0,0,0,1.28)";
              duration = 0.22;
              start = "window-height-before / window-height";
              end = 1;
            };
            offsetX = {
              curve = "cubic-bezier(0,0,0,1.28)";
              duration = 0.22;
              start = "window-x-before - window-x";
              end = 0;
            };
            offsetY = {
              curve = "cubic-bezier(0,0,0,1.28)";
              duration = 0.22;
              start = "window-y-before - window-y";
              end = 0;
            };
            shadowScaleX = "scale-x";
            shadowScaleY = "scale-y";
            shadowOffsetX = "offset-x";
            shadowOffsetY = "offset-y";
          };
        }
      ];
    };
  };
}