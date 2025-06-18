# Your mpd.nix file
{ config, pkgs, lib, ... }: # Add pkgs and lib here

{
  services.mpd = {
    enable = true;
    musicDirectory = "/home/array/Music/Music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
  };

}