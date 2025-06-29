{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    firefox
    gparted
    libreoffice
    mpv
    obs-studio
    obsidian
    telegram-desktop
    vesktop
    wofi

    # Coding stuff
    python
    go
    vscode

    # CLI utils
    bluez
    bluez-tools
    brightnessctl
    cava
    eza
    fastfetch
    ffmpeg
    ffmpegthumbnailer
    file
    fzf
    git
    gotop
    lazygit
    light
    lux
    mediainfo
    microfetch
    neofetch
    nix-index
    nix-output-monitor
    ntfs3g
    openssl
    pfetch-rs
    ranger
    scrot
    swww
    tree
    unzip
    vim
    wget
    yt-dlp
    zip

    # GUI utils
    feh
    imv
    mako
    screenkey

    # Xorg stuff
    #xclip
    #xorg.xbacklight
    #xterm

    # Wayland stuff
    cliphist
    wl-clipboard
    xwayland

    # WMs and stuff
    hyprland
    seatd
    waybar
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk

    # GNOME stuff
    gnome-tweaks
    gnome-extension-manager
    
    # Sound
    pamixer
    pipewire
    pulseaudio

    # GPU stuff
    amdvlk
    
    # Screenshotting
    flameshot
    grim
    grimblast
    slurp
    swappy

    # Other
    home-manager
    papirus-nord
    spice-vdagent
    udiskie
    udisks
    usbutils
  ];

  fonts.packages = with pkgs; [
    font-awesome
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    powerline-fonts
    powerline-symbols
    twemoji-color-font

    nerd-fonts.fira-code
    nerd-fonts.hack
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-mono
    nerd-fonts.code-new-roman
    nerd-fonts.meslo-lg
  ];
}
