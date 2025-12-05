{ inputs, ... }:
{
/*
  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];
  programs.hyprpanel = {
    enable = true;
    overlay.enable = true;
    systemd.enable = true;
    over.enable = true;
    layout = {
      "bar.layouts" = {
        "0" = {
          left = [ "clock" ];
	  middle = [ "workspaces" ];
	  right = [ "systray" "notifications" ];
	};
      };
    };
    settings = {
      bar.launcher.autoDetectIcon = true;
      bar.workspaces.show_icons = true;
      menus.clock = {
        time = {
          military = false;
	  hideSeconds = true;
	};
      };
      theme.bar.transparent = true;
    };
  };
*/
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ../../theme/theme.css;
    settings = [{
      layer = "top";
      width = 1900;
      position = "bottom";
      modules-left = [ "clock" ];
      modules-center = [ "hyprland/workspaces" ];
      modules-right = [ "mpris" "tray" ];
      clock = {
        interval = 1;
        format = "{:%Ex %EX}";
      };
      mpris = {
        format = " : {title} - {artist}";
        format-paused = " : {title} - {artist}";
      };
    }];
  };
}
