{ config, pkgs, ... }:

let unstable = import (fetchTarball https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz) { };
in
{
  # Your custom configuration
  home.packages = with pkgs; [
    # Nix LSP
    rnix-lsp

    # Neovim related
    unstable.neovim
    trash-cli
    cht-sh
    lemonade # remote clipboard over TCP

    # Other CLI tools
    bat
    difftastic
    fd
    fzf
    tldr
    tree
  ];
}