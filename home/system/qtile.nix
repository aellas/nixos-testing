{pkgs, ...}: {
  home.packages = with pkgs; [
      qtile
      qtile-extras
      pywal16
      feh
      dunst
      pavucontrol
      pulseaudio
      pamixer
      alsa-utils
      playerctl
      rofi
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
