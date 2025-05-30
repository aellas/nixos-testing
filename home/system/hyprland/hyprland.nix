{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    swww
    grim
    slurp
    wl-clipboard
    swappy
    ydotool
    hyprpolkitagent
    hyprland-qtutils #needed for banners and ANR
    hyprland-qt-support
    hyprland-protocols
  ];

  systemd.user.targets.hyprland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = ["--all"];
    };
    xwayland.enable = true;

    plugins = [
      pkgs.hyprlandPlugins.hyprtrails
      pkgs.hyprlandPlugins.hyprexpo
      pkgs.hyprlandPlugins.hyprspace
    ];

    settings = {
      input = {
        kb_layout = "us";
        kb_options = [
          "grp:alt_caps_toggle"
          "caps:super"
        ];
        numlock_by_default = false;
        repeat_delay = 300;
        follow_mouse = 1;
        float_switch_override_focus = 0;
        sensitivity = 0;
        touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
          scroll_factor = 0.8;
        };
      };

      gestures = {
        workspace_swipe = 1;
        workspace_swipe_fingers = 3;
        workspace_swipe_distance = 500;
        workspace_swipe_invert = 1;
        workspace_swipe_min_speed_to_force = 30;
        workspace_swipe_cancel_ratio = 0.5;
        workspace_swipe_create_new = 1;
        workspace_swipe_forever = 1;
      };

      general = {
        "$modifier" = "SUPER";
        layout = "master";
        gaps_in = 6;
        gaps_out = 8;
        border_size = 2;
        resize_on_border = true;
        "col.active_border" = "0xee050607";
        "col.inactive_border" = "0xFF3C3C40";
      };

      misc = {
        layers_hog_keyboard_focus = true;
        initial_workspace_tracking = 0;
        mouse_move_enables_dpms = true;
        key_press_enables_dpms = false;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        enable_swallow = false;
        vrr = 0;
        vfr = true;
        middle_click_paste = true;
        enable_anr_dialog = true;
        anr_missed_pings = 20;
        font_family = "Maple Mono";
      };

      dwindle = {
        pseudotile = true;
        force_split = 2;
        preserve_split = true;
      };

      decoration = {
        rounding = 0;
        blur = {
          enabled = true;
          size = 6;
          passes = 3;
          ignore_opacity = false;
          new_optimizations = true;
        };
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };
      };

      cursor = {
        sync_gsettings_theme = true;
        no_hardware_cursors = 1;
        enable_hyprcursor = false;
        warp_on_change_workspace = 2;
        no_warps = true;
      };

      render = {
        explicit_sync = 0;
        explicit_sync_kms = 1;
        direct_scanout = 0;
      };

      master = {
        new_status = "master";
        new_on_top = 1;
        mfact = 0.5;
      };

      ecosystem = {
        no_donation_nag = true;
        no_update_news = false;
      };
    };

    extraConfig = ''
      monitor=,preferred,auto,auto
      #source = ~/.config/hypr/monitors.conf
      #source = ~/.config/hypr/workspaces.conf

      plugin {
        hyprtrails {
          color = rgba(33ccff80)
        }
      }
      plugin {
        hyprexpo {
          columns = 3
          gap_size = 5
          bg_col = rgb(111111)
          workspace_method = center current
          enable_gesture = true
          gesture_distance = 300
          gesture_positive = true
        }
      }
      bind = ALT, space, hyprexpo:expo, toggle

      bind = WIN, TAB, overview:toggle, all
      bind = WIN SHIFT, TAB, overview:close, all
      plugin {
        overview {
          panelColor = rgba(00000000)
          panelBorderColor = rgba(E0E0E0FF)
          workspaceActiveBackground = rgba(E0E0E0FF)
          workspaceInactiveBackground = rgba(0F0F0FFF)
          workspaceActiveBorder = rgba(E0E0E0FF)
          workspaceInactiveBorder = rgba(E0E0E033)
          dragAlpha = 1

          panelBorderWidth = 10
          panelHeight = 275
          reservedArea = 70
          gapsIn = 10
          gapeOut = 10
          onBottom = false
          centerAligned = true
          hideBackgroundLayers = false
          hideOverlayLayers = true
          hideRealLayers = false
          drawActiveWorkspace = true
          affectStrut = false

          exitOnClick = true
          switchOnDrop = true
          showEmptyWorkspace = false
          showSpecialWorkspace = false
        }
      }
    '';
  };
}
