{
    services.xserver = {
      enable = true;
      desktopManager.plasma5.enable = true;
    };
    services.displayManager = {
      sddm.enable = true;
      sddm.wayland.enable = true;
      defaultSession = "hyprland";
    };
}
