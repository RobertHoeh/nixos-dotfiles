{
  environment.interactiveShellInit = ''
    alias nix-config='sudo nvim /etc/nixos/configuration.nix'
    alias nix-flake='sudo nvim /etc/nixos/flake.nix'
    alias nix-dir='cd /etc/nixos'
    alias boot-win='sudo efibootmgr -n 0000 && reboot'
    alias boot-windows='sudo efibootmgr -n 0000 && reboot'
  '';
}
