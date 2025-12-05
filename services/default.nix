{ pkgs, ... }:
{
  imports = [
    ./pipewire.nix
    ./xserver.nix
    ./printing.nix
  ];
  services = {
    gvfs.enable = true;
    tumbler.enable = true;
    udev.packages = [ pkgs.via ];
  };
  security.polkit.enable = true;
}
