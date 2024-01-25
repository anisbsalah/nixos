{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  imports = [
    ./home-modules/appearance.nix
    ./home-modules/alacritty.nix
    ./home-modules/bash.nix
    ./home-modules/dconf-settings.nix
    ./home-modules/git.nix
    ./home-modules/rofi.nix
    ./home-modules/starship.nix
    ./home-modules/wallpaper.nix
    ./home-modules/wezterm.nix
    ./home-modules/zsh.nix
  ];

  home-manager.useGlobalPkgs = true;

  home-manager.users.${username} = {

    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    home.username = "${username}";
    home.homeDirectory = "/home/${username}";

    # Packages that should be installed to the user profile.
    home.packages = with pkgs; [
    ];

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    home.stateVersion = "23.11";

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

  };
}
