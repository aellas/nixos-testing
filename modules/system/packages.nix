{ pkgs, inputs, ...}: {
  
   nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs;
    [
      pywal16
      feh
      dunst
      pavucontrol
      pywalfox-native
      pulseaudio
      pamixer
      alsa-utils
      playerctl
      rofi
      bolt-launcher
      github-desktop
      youtube-music
      git
      vscodium
      seahorse
      libsecret
      polkit_gnome
      nwg-look
      picom
      xclip
      haskellPackages.greenclip
      brave
      mission-center
      gpick
      lazygit
    ];

}
