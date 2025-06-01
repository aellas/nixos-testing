{ config, pkgs, lib, ... }:

{
  services.xserver.enable = true;

  services.xserver.windowManager.qtile.enable = true;

  services.displayManager.defaultSession = lib.mkForce "qtile";

  services.xserver.windowManager.qtile.extraPackages = python3Packages: with python3Packages; [
    qtile-extras
  ];
}