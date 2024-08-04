{ config, pkgs, ... }:

{
  # Enable services
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  
  # services.xserver.desktopManager.gnome.enable = true;
  services.xserver.desktopManager.gnome.enable = false;

  # Sound
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.printing.enable = true;
  programs.firefox.enable = true;
}

