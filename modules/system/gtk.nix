{pkgs, ...}: {
  gtk = {
    iconTheme = {
      name = "epapirus-icon";
      package = pkgs.epapirus-icon-theme;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
