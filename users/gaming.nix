{
    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.allowUnsupportedSystem = true;
    home.stateVersion = "23.05";
    programs.kitty.enable = true;
}
