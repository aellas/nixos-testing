{ pkgs, ...}: 
{
  programs = {
    thunar = {
      enable = thunarEnable;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  environment.systemPackages = with pkgs; [
    ffmpegthumbnailer
  ];
}
