{pkgs, ...}: {
  home.packages = with pkgs; [
      pywal16
      feh
      dunst
      pavucontrol
      pulseaudio
      pamixer
      alsa-utils
      playerctl
      git
      polkit_gnome
      picom
      xclip
      haskellPackages.greenclip
      gpick
      brightnessctl
  ];

  home.file = {
    ".config/qtile" = {
      source = ./qtile;
      recursive = true;
    };
  };
}
