{ pkgs, ... }:
{
  environment.systemPackages = [
    # Apps
    pkgs.librewolf
    (pkgs.discord.override {
      withOpenASAR = true;
    })
    pkgs.firefox
    pkgs.mpv
    pkgs.via
    pkgs.xournalpp
    pkgs.gscreenshot
    pkgs.ungoogled-chromium
    pkgs.figma-linux
    pkgs.youtube-music

    # development programs
    pkgs.vscodium-fhs
    pkgs.vscode-fhs
    pkgs.android-studio
    pkgs.rpi-imager
    
    # Terminal programs
    pkgs.betterdiscordctl
    pkgs.nix-tree
    pkgs.dunst
    pkgs.neofetch
    pkgs.peaclock
    pkgs.gh
    pkgs.thefuck
    pkgs.killall
    pkgs.du-dust
    pkgs.btop
    pkgs.yewtube
    pkgs.fzf
    pkgs.zoxide
    pkgs.nnn
    pkgs.nh
    pkgs.efibootmgr
    pkgs.service-wrapper

    # Misc + libraries
    pkgs.xarchiver
    pkgs.grimblast
    pkgs.mpvpaper
    pkgs.wl-clipboard
    pkgs.xwaylandvideobridge
    pkgs.libsForQt5.polkit-kde-agent
  ];
}
