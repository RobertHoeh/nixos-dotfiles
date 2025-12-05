{
    wayland.windowManager.hyprland = {
      enable = true;
      systemd.extraCommands = [
        "systemctl --user stop hyprland-session.target"
        "systemctl --user start hyprland-session.target"
	"systemctl --user start plasma-polkit-agent"
	"mpvpaper -f -o 'no-audio loop' HDMI-A-1 /etc/nixos/modules/hyprland/waterfall-wallpaper.mp4"
      ];
      settings = {
        "$terminal" = "kitty";
	"$filemanager" = "thunar";
	"$menu" = "wofi --show drun";
	"$mod" = "SUPER";
	bind = [
          "$mod, Return, exec, $terminal"
	  "$mod, Q, killactive"
	  "$mod, Space, togglefloating,"
	  "$mod, D, exec, $menu"
	  "$mod SHIFT, S, exec, gscreenshot"
	  "$mod, h, movefocus, l"
	  "$mod, l, movefocus, r"
	  "$mod, k, movefocus, u"
	  "$mod, j, movefocus, d"
	  "$mod SHIFT, h, swapwindow, l"
	  "$mod SHIFT, j, swapwindow, d"
	  "$mod SHIFT, k, swapwindow, u"
	  "$mod SHIFT, l, swapwindow, r"
	  "$mod, 1, workspace, 1"
	  "$mod, 2, workspace, 2"
	  "$mod, 3, workspace, 3"
	  "$mod, 4, workspace, 4"
	  "$mod, 5, workspace, 5"
	  "$mod, 6, workspace, 6"
	  "$mod, 7, workspace, 7"
	  "$mod, 8, workspace, 8"
	  "$mod, 9, workspace, 9"
	  "$mod, 0, workspace, 10"
	  "$mod SHIFT, 1, movetoworkspace, 1"
	  "$mod SHIFT, 2, movetoworkspace, 2"
	  "$mod SHIFT, 3, movetoworkspace, 3"
	  "$mod SHIFT, 4, movetoworkspace, 4"
	  "$mod SHIFT, 5, movetoworkspace, 5"
	  "$mod SHIFT, 6, movetoworkspace, 6"
	  "$mod SHIFT, 7, movetoworkspace, 7"
	  "$mod SHIFT, 8, movetoworkspace, 8"
	  "$mod SHIFT, 9, movetoworkspace, 9"
	  "$mod SHIFT, 0, movetoworkspace, 10"
	  " , XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
	  " , XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
	  " , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
	  " , XF86AudioPlay, exec, playerctl play-pause"
	  " , XF86AudioPrev, exec, playerctl previous"
	  " , XF86AudioNext, exec, playerctl next"
	];
	bindm = [
          "$mod, mouse:272, movewindow"
	  "$mod, mouse:273, resizewindow"
	];
        general = {
          border_size = 0;
	  gaps_in = 5;
	  gaps_out = 10;
	};
	decoration = {
          rounding = 5;
	  active_opacity = 1;
	  inactive_opacity = 0.95;
	  shadow.enabled = false;
	};
	master = {
	  new_status = "master";
	};
	input = {
	  kb_model = "pc104";
          numlock_by_default = true;
	};
	misc = {
          disable_hyprland_logo = false;
	  force_default_wallpaper = 0;
	};
      };
      extraConfig = ''
      windowrulev2=float,class:(.gscreenshot-wrapped),title:(.gscreenshot-wrapped)
      '';
    };
}
