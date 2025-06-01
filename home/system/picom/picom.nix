{
  services.picom = {
    enable = true;

    settings = {
      backend = "glx";
      vsync = true;
      extraConfig = builtins.readFile ./animations.conf;
      "glx-use-copysubbuffer-mesa" = true;
      "xrender-sync" = true;
      "xrender-sync-fence" = true;

      "rounded-corners" = true;
      "corner-radius" = 6;
      "rounded-corners-exclude" = [
        "class_g = 'i3-frame'"
        "class_g = 'rofi'"
        "name = 'Notification'"
        "window_type = 'dock'"
        "window_type = 'desktop'"
      ];
      "detect-rounded-corners" = true;

      "blur-method" = "dual_kawase";
      "blur-size" = 8;
      "blur-strength" = 6;
      "blur-background" = true;
      "blur-background-frame" = false;
      "blur-kern" = "3x3box";
      "blur-background-exclude" = [
        "window_type = 'Polybar'"
        "window_type = 'desktop'"
        "window_type = 'dock'"
        "role = 'xborder'"
        "class_g = 'Conky'"
        "name = 'Notification'"
        "_GTK_FRAME_EXTENTS"
      ];

      shadow = true;
      "shadow-radius" = 20;
      "shadow-offset-x" = -17;
      "shadow-offset-y" = -17;
      "shadow-opacity" = 0.4;
      "shadow-color" = "#000000";

      fading = true;
      "fade-in-step" = 0.04;
      "fade-out-step" = 0.04;
      "fade-delta" = 10;
      "fade-time" = 200;
      "fade-duration" = 300;
      "no-fading-openclose" = true;
      "no-fading-destroyed-argb" = true;

      wintypes = {
        tooltip = {
          fade = true;
          shadow = true;
          opacity = 0.75;
          focus = true;
          "full-shadow" = false;
        };
        dock = {
          shadow = false;
          "clip-shadow-above" = true;
        };
        dnd = { shadow = false; };
        popup_menu = { opacity = 1.0; };
        dropdown_menu = { opacity = 1.0; };
      };
    };
  };
}
