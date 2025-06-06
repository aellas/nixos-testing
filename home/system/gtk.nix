{ pkgs, ... }:

{   
    gtk = {
    enable = true;
    theme = {
      name = "Plata-Noir";
      package = pkgs.plata-theme;
    };
    iconTheme = {
      name = "ePapirus";
      package = pkgs.epapirus-icon-theme;
    
    };
  };
    dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Plata-Noir";
      icon-theme = "ePapirus";
    };
  };
}