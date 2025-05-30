{ pkgs, inputs, ...}: {

  programs = {
    firefox.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    hyprland.enable = true;
    xwayland.enable = true;
  };
   nixpkgs.config.allowUnfree = true;
}
