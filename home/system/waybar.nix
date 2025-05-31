{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 14;
        margin-top = 4;
        margin-left = 4;
        margin-right = 4;
        border-radius = 4;
        modules-left = [ "custom/nix" "hyprland/workspaces" "hyprland/window"];
        modules-center = [ ];
        modules-right = [ "pulseaudio" "network" "tray" "battery" "clock" ];

         "hyprland/workspaces" = {
            format = "{icon}";
            active-only = "false";
            on-click = "activate";
            all-outputs = true;
            persistent-workspaces = {
              "1" = [];
              "2" = [];
              "3" = [];
              "4" = [];
              "5" = [];
          };
        };
        "clock" = {
          format = " {:%a %d %b  :  %H:%M %p} ";
          tooltip-format = "{:%A, %B %d %Y}";
        };

        "custom/nix" = {
          format = "  ";
        };


        "pulseaudio" = {
          format = "   {volume}%";
          format-muted = "";
        };

        "hyprland/window" = {
           format = " {title}";
           max-length = 333;
           seperate-outputs = true;
        };

        "network" = {
          format-wifi = "    {essid} ";
          format-ethernet = " {ifname}";
          format-disconnected = "⚠ Disconnected";
          tooltip = true;
        };

        "cpu" = {
          format = " {usage}%";
        };

        "memory" = {
          format = " {used:0.1f}G";
        };

        "battery" = {
          format = " {icon}   {capacity}% ";
          format-icons = [ "" "" "" "" "" ];
        };

        "tray" = {
          spacing = 8;
          icon-size = 14;
        };
      };
    };

    style = ''
      * {
    font-family: 'Ubuntu Nerd Font', 'monospace';
    font-size: 11px;
    font-weight: bold;
    min-height: 14px;
    border-radius: 4;
 }

 window {
    background: transparent;
    margin: -10px;
    background-color: transparent;  /* #050607 */
    border-color: #0B0C0F
    }


#workspaces {
    background-color: transparent;
    font-size: 9px;

 }
 
 #workspaces button {
     all: initial;
     background-color: #050607;
     color: #ffffff;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 3px;
 }
 
 #workspaces button.active {
   color: #0B0C0F;
   background-color: #D3C9D2;
 }
 
 #workspaces button:hover {
   box-shadow: inherit;
   text-shadow: inherit;
   color: #131519;
   background-color: #D3C9D2;
 }
 
 #workspaces button.urgent {
   background-color: #8097C1;
 }

#custom-nix {
     /* Remove GTK theme values (waybar #1351) */
     min-width: 0;
     font-size: 14px;
     color: #ffffff;    
     background: #050607;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 6px;
}

#window {
     color: #ffffff;    
     background-color: #050607;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 6px;
}

 #clock {
   /* Remove GTK theme values (waybar #1351) */
   min-width: 0;
   /* Fix weird spacing in materia (waybar #450) */
   box-shadow: inset 0 -3px transparent;
   /* Use box-shadow instead of border so the text isn't offset */
   color: #ffffff;
     background-color: #050607;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 3px;

    

 }

 #pulseaudio {
   /* Remove GTK theme values (waybar #1351) */
   min-width: 0;
   font-family: 'Ubuntu Nerd Font', monospace;
   font-size: 10px;
   font-weight: bold; 
   color: #ffffff; 
     background-color: #050607;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 3px;

 }

 #network {
  all: initial;
  min-width: 0;
  box-shadow: inset 0 -3px transparent;
  font-family: 'Ubuntu Nerd Font', monospace;
  font-size: 10px;
  font-weight: bold; 
  color: #ffffff; 
  background-color: #050607;
  /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 3px;
 }

  #battery {
  all: initial;
  min-width: 0;
  box-shadow: inset 0 -3px transparent;
  font-family: 'Ubuntu Nerd Font', monospace;
  font-size: 10px;
  font-weight: bold; 
  color: #ffffff; 
     background-color: #050607;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 3px;

 }

 
#custom-media {
  all: initial;
  /* Remove GTK theme values (waybar #1351) */
  min-width: 0;
  /* Fix weird spacing in materia (waybar #450) */
  box-shadow: inset 0 -3px transparent;
  font-family: 'Ubuntu Nerd Font', monospace;
  font-size: 13px;
  font-weight: bold; 
  /* Use box-shadow instead of border so the text isn't offset */
  padding: 6px 10px;
  margin: 6px 3px;
  border-radius: 4px;
  background-color: #0F1014;
  color: #ffffff; 
}


 #tray {
   all: initial;
   min-width: 0;
   box-shadow: inset 0 -3px transparent;
   color: #ffffff;
       background-color: #050607;
     box-shadow: inset 0 -3px transparent;
     /* Use box-shadow instead of border so the text isn't offset */
     padding: 4px 10px;
     border-radius: 4px;
     margin: 3px 3px;

 }  
    '';
  };
}