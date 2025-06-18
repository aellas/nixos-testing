{
  pkgs,
  inputs,
  username,
  host,
  profile,
  ...
}:

{
  users.users.array = {
    isNormalUser = true;
    extraGroups = [
      "adbusers"
      "docker"
      "libvirtd"
      "lp"
      "networkmanager"
      "scanner"
      "wheel"
      "audio"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  nix.settings.allowed-users = ["array"];
}
