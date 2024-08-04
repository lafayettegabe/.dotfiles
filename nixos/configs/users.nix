{ config, pkgs, ... }:

{
  users.users.gabe = {
    isNormalUser = true;
    description = "gabriel";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      # Example packages
      # thunderbird
    ];
  };

  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "gabe";

  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
}

