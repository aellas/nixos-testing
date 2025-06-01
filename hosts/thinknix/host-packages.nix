{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
      bolt-launcher
      kdePackages.kate
      github-desktop
      youtube-music
      git
      vscodium
      seahorse
      libsecret
      polkit_gnome

      pywal
      feh
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
