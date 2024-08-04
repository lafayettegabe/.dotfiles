{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  environment.systemPackages = with pkgs; [
    (pkgs.waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
    )

    pkgs.eww
    pkgs.dunst
    libnotify
    
    #hyprpaper
    #swaybg
    #wpaperd
    #mpvpaper
    swww
    
    kitty

    rofi-wayland
    #wofi
    #bemenu
    #fuzzel
    #tofi
  ];
}
