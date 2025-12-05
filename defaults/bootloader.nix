{
  boot.loader = {
    efi.efiSysMountPoint = "/boot";
    grub = {
      minegrub-theme = {
        enable = true;
	splash = "nixos is cool!";
      };
      enable = true;
      devices = [ "nodev" ];
      useOSProber = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      extraEntriesBeforeNixOS = true;
    };
  };
}
