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
}
