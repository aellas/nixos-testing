{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
      bolt-launcher
      kdePackages.kate
      github-desktop
      youtube-music
      git
      vscodium

      pywal
      feh
      picom
      dunst
      xclip
      pavucontrol
      pywalfox-native
      pulseaudio
      pamixer
      alsa-utils
      playerctl
      haskellPackages.greenclip
      rofi

  ];
}
