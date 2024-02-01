# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz";
in

{
  imports =
    [
      ./hardware-configuration.nix # Include the results of the hardware scan.
      ./system-modules/env-vars.nix
      ./system-modules/core-packages.nix
      ./system-modules/mount-cifs.nix
      ./system-modules/sound.nix
      ./system-modules/bluetooth.nix
      ./system-modules/fonts.nix
      ./system-modules/services.nix
      ./desktops/cinnamon-desktop.nix
      ./home-manager.nix
      (import "${home-manager}/nixos")
    ];

  # Bootloader.
  boot.loader = {
    grub = {
      enable = true;
      device = "/dev/sda";
      useOSProber = true;
      timeoutStyle = "menu";
    };
  };

  boot.initrd = {
    systemd.enable = true;
    verbose = false;
  };

  boot.consoleLogLevel = 3;
  boot.kernelParams = [
    "loglevel=3"
    "quiet"
    "splash"
  ];

  # Plymouth.
  boot.plymouth = {
    enable = true;
    theme = "spinner";
  };

  # Kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Swappiness.
  boot.kernel.sysctl = { "vm.swappiness" = 10; };

  # Zram.
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
    swapDevices = 1;
  };

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Africa/Tunis";
  time.hardwareClockInLocalTime = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_TIME = "en_US.UTF-8";
  };
  # Configure console keymap and font
  console = {
    keyMap = "fr";
    packages = [ pkgs.terminus_font ];
    font = "${pkgs.terminus_font}/share/consolefonts/ter-i18b.psf.gz";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
  services.xserver.libinput.touchpad = {
    naturalScrolling = true;
    scrollMethod = "edge";
    tapping = true;
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "fr";
    xkbVariant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.${username} = {
    isNormalUser = true;
    description = "Anis b Salah";
    initialPassword = "password";
    group = "users";
    extraGroups = [ "wheel" "audio" "video" "networkmanager" "samba" ];
    createHome = true;
    home = "/home/${username}";
    packages = with pkgs; [
    ];
    shell = pkgs.zsh;
  };

  # Allow unfree packages.
  nixpkgs.config.allowUnfree = true;
  # nixpkgs.config.nvidia.acceptLicense = true;

  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
  ];

  nix.settings.auto-optimise-store = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Auto system update.
  system.autoUpgrade = {
    enable = true;
  };

  programs.dconf.enable = true;
  programs.zsh.enable = true;

  # Polkit
  security.polkit.enable = true;
  security.polkit.extraConfig = ''
    polkit.addRule(function(action, subject) {
      if (
        subject.isInGroup("users")
          && (
            action.id == "org.freedesktop.login1.reboot" ||
            action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
            action.id == "org.freedesktop.login1.power-off" ||
            action.id == "org.freedesktop.login1.power-off-multiple-sessions"
          )
        )
      {
        return polkit.Result.YES;
      }
    })
  '';

  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
