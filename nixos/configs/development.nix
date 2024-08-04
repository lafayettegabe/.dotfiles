{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cmatrix
    zoxide
    alacritty
    git
    vscode
    neovim
    vim
    gcc
    go
    nodejs
    tmux
    python3
    postgresql
    sqlite
    clang-tools
  ];
}

