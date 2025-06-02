{ pkgs, ... }:
{
  services.greenclip = {
    enable = true;
    package = pkgs.haskellPackages.greenclip;
  };
}
