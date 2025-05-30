{ config, pkgs, lib, host, ... }:
{
  nix = {
    settings = {
      download-buffer-size = 250000000;
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  time.timeZone = "Europe/London";
  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8"; LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8"; LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8"; LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8"; LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  console.keyMap = "us";

  system.stateVersion = "25.05";
}
