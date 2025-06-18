{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
      bolt-launcher
      github-desktop
      youtube-music
      vscodium
      brave
      flameshot
    ];
}
