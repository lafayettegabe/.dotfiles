{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports =
    [ ./configs/system.nix
      ./configs/hyprland.nix
      ./configs/users.nix
      ./configs/development.nix
      ./configs/containers.nix
      ./configs/utilities.nix
      ./configs/services.nix
      ./configs/fonts.nix
      ./hardware-configuration.nix
    ];
}
