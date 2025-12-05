# ROBERT HOEH NIXOS CONFIG

# nixos basic definitions
{ config, pkgs, ... }:
{
  nix = {
    package = pkgs.nixVersions.latest;
    settings.experimental-features = [ "nix-command" "flakes" ];
    settings = {
      substituters = ["https://nix-gaming.cachix.org"];
      trusted-public-keys = ["nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="];
    };
  };


  # Environment Variables
  environment.variables = {
    EDITOR = "nvim";
    FLAKE = "/etc/nixos";
  };

  hardware.keyboard.qmk.enable = true;

  # nixpkgs
  nixpkgs.config.allowUnfree = true;
  #allowUnsupportedSystem = true;

  # fonts
  fonts.packages = with pkgs; [
    pkgs.nerd-fonts._0xproto
    pkgs.nerd-fonts.droid-sans-mono
  ];

  # Services
  security.rtkit.enable = true;

  # Nixos version (You probably don't need to change this
  system.stateVersion = "23.05"; 
}
