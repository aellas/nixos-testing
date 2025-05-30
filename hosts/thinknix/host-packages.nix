{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
      bolt-launcher
      kdePackages.kate
      github-desktop
      youtube-music
      git
      vscodium
  ];
}
