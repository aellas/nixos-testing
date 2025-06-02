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
    ];

}
