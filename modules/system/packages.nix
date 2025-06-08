{ pkgs, inputs, ...}: {
  
   nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs;
    [
      bolt-launcher
      github-desktop
      youtube-music
      vscodium
      brave
      lazygit
      mission-center
    ];

}
