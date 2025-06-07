{profile, pkgs, ...}: 
{
  services = {
    libinput.enable = true;
    fstrim.enable = true;
    gvfs.enable = true;
    envfs.enable = true;
    openssh.enable = true;
    blueman.enable = true;
    tumbler.enable = true;
    greenclip.enable = true;
    displayManager.sddm.enable = true;
    xserver.enable = true;
    xserver.xkb = { 
      layout = "us"; 
      variant = ""; 
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    gnome.gnome-keyring.enable = true;
  };
    security.pam.services.sddm.enableGnomeKeyring = true;
}


