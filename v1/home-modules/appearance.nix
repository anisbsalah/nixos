{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {

    home.pointerCursor = {
      gtk.enable = true;
      package = pkgs.qogir-icon-theme;
      name = "Qogir";
      size = 16;
    };

    qt = {
      enable = true;
      platformTheme = "gtk";
      style.package = pkgs.arc-theme;
      style.name = "Arc-Dark";
      # platformTheme = "kde";
      # style.package = pkgs.arc-kde-theme;
      # style.name = "kvantum";
    };
    #xdg.configFile = {
    #  "Kvantum/ArcDark/ArcDark.kvconfig".source = "${pkgs.arc-kde-theme}/share/Kvantum/ArcDark.kvconfig";
    #  "Kvantum/ArcDark/ArcDark.svg".source = "${pkgs.arc-kde-theme}/share/Kvantum/ArcDark.svg";
    #  "Kvantum/kvantum.kvconfig".text = "[General]\ntheme=ArcDark";
    #};

    gtk = {
      enable = true;
      cursorTheme = {
        name = "Qogir";
        package = pkgs.qogir-icon-theme;
        size = 16;
      };
      iconTheme = {
        name = "Papirus-Dark";
        package = pkgs.papirus-icon-theme;
      };
      theme = {
        name = "Arc-Dark";
        package = pkgs.arc-theme;
      };
      font = {
        name = "Noto Sans Regular 11";
        package = pkgs.noto-fonts;
      };
      gtk3.extraConfig = {
        gtk-application-prefer-dark-theme = 1;
        gtk-cursor-theme-name = "Qogir";
        gtk-icon-theme-name = "Papirus-Dark";
        gtk-theme-name = "Arc-Dark";
        gtk-xft-antialias = 1;
        gtk-xft-hinting = 1;
        gtk-xft-hintstyle = "hintfull";
        gtk-xft-rgba = "rgb";
      };
      gtk4.extraConfig = {
        gtk-application-prefer-dark-theme = 1;
        gtk-cursor-theme-name = "Qogir";
        gtk-icon-theme-name = "Papirus-Dark";
        gtk-theme-name = "Arc-Dark";
        gtk-xft-antialias = 1;
        gtk-xft-hinting = 1;
        gtk-xft-hintstyle = "hintfull";
        gtk-xft-rgba = "rgb";
      };
    };
  };
}
