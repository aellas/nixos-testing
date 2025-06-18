{ pkgs, ... }:

{   
    gtk = {
    enable = true;
    theme = {
      name = "Colloid-Dark";
      package = pkgs.colloid-gtk-theme;
    };
    iconTheme = {
      name = "ePapirus";
      package = pkgs.epapirus-icon-theme;
    
    };
  };
    dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Colloid-Dark";
      icon-theme = "ePapirus";
    };
  };
}