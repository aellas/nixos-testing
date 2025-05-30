{
  programs.fastfetch = {
    enable = true;

    settings = {
      separator = "∷ ";

      logo = {
        source = ./ascii.txt;
      };

      modules = [
     "break"
     "break"

        {
            type = "os";
            key = "  os ";
            format = "{3}";
            keyColor = "white";
        }
        {
            type = "kernel";
            key = "kern ";
            keyColor = "33";
        }
        {
            type = "packages";
            key = "pkgs ";
            keyColor = "white";
        }
        {
            type = "uptime";
            key = "  up ";
            keyColor = "33";
        }
        {
            type = "wm";
            key = "  wm ";
            keyColor = "white";
        }
        {
            type = "command";
            keyColor ="33";
            key = " age ";
            text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
        {
            type = "command";
            keyColor ="white";
            key = " gen ";
            text = "readlink /nix/var/nix/profiles/system | grep -o '[0-9]\\+'";
        }
      ];
    };
  };
}
