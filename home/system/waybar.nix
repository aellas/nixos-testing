{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "cpu" "memory" "battery" "tray" ];

        "hyprland/workspaces" = {
          format = "{icon}";
          on-click = "activate";
          all-outputs = false;
        };

        clock = {
          format = "{:%a %d %b  %H:%M}";
          tooltip-format = "{:%A, %B %d %Y}";
        };

        pulseaudio = {
          format = "{volume}% ";
          format-muted = "";
        };

        network = {
          format-wifi = " {essid}";
          format-ethernet = " {ifname}";
          format-disconnected = "⚠ Disconnected";
          tooltip = true;
        };

        cpu = {
          format = " {usage}%";
        };

        memory = {
          format = " {used:0.1f}G";
        };

        battery = {
          format = "{capacity}% {icon}";
          format-icons = [ "" "" "" "" "" ];
        };

        tray = {
          spacing = 10;
        };
      };
    };

    style = ''
      * {
        font-family: Ubuntu Nerd Font, sans-serif;
        font-size: 13px;
        color: #D3DAE3;
      }

      window#waybar {
        background: #27272E;
        border-bottom: 2px solid #9DA2FF;
      }

      #workspaces button {
        padding: 0 8px;
        margin: 2px;
        border-radius: 6px;
        background: transparent;
      }

      #workspaces button.active {
        background-color: #9F7AEA;
      }

      #clock,
      #cpu,
      #memory,
      #battery,
      #network,
      #pulseaudio,
      #tray {
        padding: 0 10px;
      }
    '';
  };
}