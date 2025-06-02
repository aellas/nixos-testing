{ config, pkgs, lib, ... }:
{
  systemd.user.services.greenclip = {
    enable = true;
    description = "Greenclip - clipboard manager";
    script = "${pkgs.haskellPackages.greenclip}/bin/greenclip daemon"; # Or whatever the command to run the daemon is
    wantedBy = [ "graphical-session.target" ]; # Or "default.target"
    serviceConfig = {
      Restart = "on-failure";
      # Add any other specific systemd service options if needed
    };
  };

  # You might also want to ensure the greenclip executable is in your path
  home.packages = [ pkgs.haskellPackages.greenclip ];
}