{ inputs, pkgs, ... }:
let
  _2048 = pkgs.callPackage ../../pkgs/2048/default.nix {};
in
{
  home.packages = (with pkgs; [
    ## browser
    inputs.zen-browser.packages."${system}".specific

    ## code editor
    zed-editor

    ## CLI utility
    ani-cli
    bitwise                           # cli tool for bit / hex manipulation
    caligula                          # User-friendly, lightweight TUI for disk imaging
    cliphist                          # clipboard manager
    eza                               # ls replacement
    entr                              # perform action when file change
    fd                                # find replacement
    ffmpeg
    file                              # Show file information
    gtt                               # google translate TUI
    gifsicle                          # gif utility
    gtrash                            # rm replacement, put deleted files in system trash
    hexdump
    imv                               # image viewer
    killall
    lazygit
    libnotify
  	man-pages					            	  # extra man pages
    mpv                               # video player
    ncdu                              # disk space
    nitch                             # systhem fetch util
    openssl
    onefetch                          # fetch utility for git repo
    pamixer                           # pulseaudio command line mixer
    playerctl                         # controller for media players
    poweralertd
    qview                             # minimal image viewer
    ripgrep                           # grep replacement
    tdf                               # cli pdf viewer
    tldr
    todo                              # cli todo list
    toipe                             # typing test in the terminal
    ttyper                            # cli typing test
    unzip
    valgrind                          # c memory analyzer
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    wget
    yazi                              # terminal file manager
    yt-dlp-light
    xdg-utils
    xxd

    ## CLI
    cbonsai                           # terminal screensaver
    cmatrix
    dogdns                            # dog dns client
    pipes                             # terminal screensaver
    sl
    tty-clock                         # cli clock

    ## GUI Apps
    bruno
    nix-prefetch-github
    obsidian
    pavucontrol                       # pulseaudio volume controle (GUI)
    vlc
    freerdp
    zenity

    # C / C++
    gcc
    gnumake

    # Python
    python3
  ]);
}
