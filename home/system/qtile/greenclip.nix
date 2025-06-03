{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    haskellPackages.greenclip
    xclip  # required for clipboard access
  ];

  systemd.user.services.greenclip = {
    description = "Greenclip clipboard manager";
    wantedBy = [ "default.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.haskellPackages.greenclip}/bin/greenclip daemon";
      Restart = "on-failure";
      Environment = "DISPLAY=:0";  # Only needed on X11
    };
  };
}
