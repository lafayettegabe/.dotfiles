{ config, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    (pkgs.nerdfonts.override {
      fonts = [ "FiraCode" ];
    })
  ];
}

