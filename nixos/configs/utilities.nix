{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ripgrep
    fd
    xclip
    lazygit
    discord
    brave
    # Add other utilities here
  ];

  # Additional system configurations can go here
}

