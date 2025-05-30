{ config, pkgs, ... }:

let
  # Define your colors as Nix variables for easy reuse
  colors = {
    accent = "#9BBFBF";
    txt = "#ffffff";
    bg = "#131519";
    bg2 = "#131519";
    waybarBg = "#0B0C0F"; # Specific for window background
    workspacesActiveBg = "#D3C9D2";
    workspacesActiveColor = "#0B0C0F";
    workspacesHoverColor = "#131519";
    workspacesUrgentBg = "#8097C1";
    customArchColor = "#00a489";
    customShutdownColor = "#e74c3c";
    moduleBg = "#0F1014"; # Common background for most modules
  };
in
{
  # This option allows you to define extra configuration files
  home.file.".config/waybar/style.css".text = ''
    /* Mocha Flamingo */
    @define-color accent ${colors.accent};
    @define-color txt ${colors.txt};
    @define-color bg ${colors.bg};
    @define-color bg2 ${colors.bg2};

    * {
      font-family: 'Ubuntu Nerd Font', 'monospace';
      font-size: 13px;
      font-weight: bold;
      min-height: 18px;
      border-radius: 0;
    }

    window {
      background: transparent;
      margin: -10px;
      background-color: ${colors.waybarBg};
      border-radius: 7px;
    }

    #workspaces {
      background-color: transparent;
    }

    #workspaces button {
      all: initial;
      padding: 5px 8px;
      margin: 6px 2px;
      border-radius: 4px;
      background-color: ${colors.waybarBg};
      color: ${colors.txt};
    }

    #workspaces button.active {
      color: ${colors.workspacesActiveColor};
      background-color: ${colors.workspacesActiveBg};
    }

    #workspaces button:hover {
      box-shadow: inherit;
      text-shadow: inherit;
      color: ${colors.workspacesHoverColor};
      background-color: ${colors.workspacesActiveBg};
    }

    #workspaces button.urgent {
      background-color: ${colors.workspacesUrgentBg};
    }

    #custom-color {
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 6px;
      background-color: ${colors.moduleBg}; # Used a common module background here
      color: ${colors.txt};
    }

    #custom-arch {
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      font-size: 14px;
      padding: 6px 8px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.customArchColor};
      margin-left: 10px;
    }

    #window {
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.txt};
    }

    #clock {
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.txt};
    }

    #wireplumber {
      all: initial;
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      font-family: 'Ubuntu Nerd Font', monospace;
      font-size: 13px;
      font-weight: bold;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.txt};
    }

    #network {
      all: initial;
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      font-family: 'Ubuntu Nerd Font', monospace;
      font-size: 13px;
      font-weight: bold;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.txt};
    }

    #custom-media {
      all: initial;
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      font-family: 'Ubuntu Nerd Font', monospace;
      font-size: 13px;
      font-weight: bold;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.txt};
    }

    #custom-shutdown {
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.customShutdownColor};
      margin-right: 10px;
    }

    #tray {
      all: initial;
      min-width: 0;
      box-shadow: inset 0 -3px transparent;
      padding: 6px 10px;
      margin: 6px 3px;
      border-radius: 4px;
      background-color: ${colors.moduleBg};
      color: ${colors.txt};
    }
  '';
}