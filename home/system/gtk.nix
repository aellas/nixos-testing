{ pkgs, ... }:

{   
    gtk = {
    enable = true;
    theme = {
      name = "Gruvbox-Dark";
      package = pkgs.gruvbox-gtk-theme;
    };
    iconTheme = {
      name = "ePapirus";
      package = pkgs.epapirus-icon-theme;
    
    };
  };
    dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Gruvbox-Dark";
      icon-theme = "ePapirus";
    };
  };
}