{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

# Never put virtualbox,mlocate in this list.
{
  environment.systemPackages = with pkgs; [
    alacritty
    alsa-firmware
    alsa-utils
    arc-theme
    arc-kde-theme
    avahi
    bash-completion
    bat
    bibata-cursors
    brave
    btop
    curl
    edid-decode
    evince
    eza
    fd
    ffmpeg_6-full
    ffmpegthumbnailer
    file
    # flameshot
    font-manager
    fzf
    gcc
    git
    glibc
    gnome.dconf-editor
    gnome.gnome-disk-utility
    gnome.gvfs
    gparted
    htop
    hw-probe
    # hwinfo
    # imlib2Full
    # inxi
    jq
    # killall
    # kitty
    # libreoffice-still
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    # lm_sensors
    # lshw
    # lxappearance
    meld
    neofetch
    networkmanagerapplet
    oh-my-zsh
    openssh
    papirus-icon-theme
    pavucontrol
    poppler
    qbittorrent
    qogir-icon-theme
    qt6Packages.qtstyleplugin-kvantum
    ripgrep
    rofi
    shellcheck
    shfmt
    # simplescreenrecorder
    sublime4
    telegram-desktop
    ueberzugpp
    unar
    vlc
    vscodium
    wget
    wezterm
    xorg.libX11.dev
    xorg.libXft
    xorg.libXinerama
    xorg.xkill
    # yad
    yazi
    zoxide
    zsh
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting

    (stdenv.mkDerivation rec {
      pname = "catppuccin-cursors";
      src = fetchFromGitHub {
        owner = "anisbsalah";
        repo = "Catppuccin-Cursors";
        rev = "main";
        sha256 = "sha256-5Ap/HPeEQWa8jwFk8RyW4pCOmSWGm3J9k5yaIGCCRqw=";
      };
      name = "catppuccin-cursors";
      installPhase = ''
        mkdir -p $out/share/icons
        cp -r $src/usr/share/icons/Catppuccin-Frappe-Light-Cursors $out/share/icons/
      '';
    })
  ];

  nixpkgs.overlays = [
    (final: prev: {
      dwm = prev.dwm.overrideAttrs (old: { src = /home/${username}/.config/dmenu-flexipatch; });
    })
  ];
}
