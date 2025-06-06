{ pkgs, inputs, ...}: {

  programs = {
    firefox.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    dconf.enable = true;
  };
  
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
      protonvpn-gui
      xclip
    ];

}
