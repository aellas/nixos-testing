{ pkgs, inputs, ...}: {

  programs = {
    firefox.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };
   nixpkgs.config.allowUnfree = true;
}
