{ config, pkgs, ... }:
{
  services.thinkfan = {
    enable = true;
      levels = [
        [0  0   35]
        [3  30  40]
        [4  38  48]
        [5  45  55]
        [7  50  60]
        [7  55  65]
        ["level auto" 65 32767]
    ];
  };
}
