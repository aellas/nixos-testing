{profile, ...}: {
  services = {
    libinput.enable = true;
    fstrim.enable = true;
    gvfs.enable = true;
    envfs.enable = true;
    openssh.enable = true;
    blueman.enable = true;
    tumbler.enable = true;
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
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
  };
}


