{ pkgs, ... }:
{
  imports = [
    ./steam.nix
    ./thunar.nix
    ./weylus.nix
    ./docker.nix
  ];

  programs = {
    neovim.enable = true;
    zsh.enable = true;
    xfconf.enable = true;
    git.enable = true;
    dconf.enable = true;
    hyprland.enable = true;
    direnv.enable = true;
  };
}
