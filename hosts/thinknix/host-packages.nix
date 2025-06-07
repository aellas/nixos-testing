{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
      flameshot
      kdePackages.isoimagewriter
  ];
}
