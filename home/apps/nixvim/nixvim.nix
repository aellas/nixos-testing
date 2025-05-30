{
  programs.nixvim = {
    enable = true; 
    colorschemes.oxocarbon.enable = true;
    plugins.lualine.enable = true;

    plugins.alpha = {
      enable = true;
    };

    imports = [
      ./plugins/alpha.nix
    ];
  };
}