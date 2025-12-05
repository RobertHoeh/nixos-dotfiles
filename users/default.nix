{ pkgs, ... }:
{
  users.defaultUserShell = pkgs.zsh;
  users.users.robert = {
    isNormalUser = true;
    description = "Work user";
    extraGroups = [ "networkmanager" "wheel" "lp" "robert" ];
  };

  users.users.gaming = {
    isNormalUser = true;
    description = "Gaming user";
    extraGroups = [ "networkmanager" "wheel" "lp" "robert" "libvirt" ];
  };
}
