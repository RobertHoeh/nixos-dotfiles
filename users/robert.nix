{pkgs, inputs, ...}:
{
    imports = [
      ../modules/hyprland
      ../modules/waybar
      ../modules/zsh
    ];
    home.stateVersion = "23.05";
    home.pointerCursor = {
      # x11.enable = true;
      gtk.enable = true;
      size = 24;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
    };
    #home.packages = [ pkgs.hyprpanel ];
    services.easyeffects.enable = true;
    gtk.enable = true;
    programs = {
      kitty = {
        enable = true;
	themeFile = "adwaita_darker";
      };
      wofi = {
        enable = true;
	style = (builtins.readFile ../theme/theme.css);
      };
    };
    dconf.settings = {
      "org/virt-manager/virt-manager/connections" = {
        autoconnect = ["qemu:///system"];
	uris = ["qemu:///system"];
      };
    };
}
