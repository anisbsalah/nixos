{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {

    home.pointerCursor = {
      gtk.enable = true;
      package = pkgs.catppuccin-cursors;
      name = "Catppuccin-Frappe-Light-Cursors";
      size = 16;
    };

    qt = {
      enable = true;
      platformTheme = "gtk";
      style.package = pkgs.arc-theme;
      style.name = "Arc-Dark";
      # platformTheme = "qtct";
      # style.name = "kvantum";
    };
    #xdg.configFile = {
    #  "Kvantum/KvArcDark/KvArcDark.kvconfig".source = "${pkgs.libsForQt5.qtstyleplugin-kvantum}/share/Kvantum/KvArcDark.kvconfig";
    #  "Kvantum/KvArcDark/KvArcDark.svg".source = "${pkgs.libsForQt5.qtstyleplugin-kvantum}/share/Kvantum/KvArcDark.svg";
    #  "Kvantum/kvantum.kvconfig".text = ''
    #    [General]
    #    theme=KvArcDark
    #  '';
    #};

    gtk = {
      enable = true;
      cursorTheme = {
        name = "Catppuccin-Frappe-Light-Cursors";
        package = pkgs.catppuccin-cursors;
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
        gtk-cursor-theme-name = "Catppuccin-Frappe-Light-Cursors";
        gtk-icon-theme-name = "Papirus-Dark";
        gtk-theme-name = "Arc-Dark";
        gtk-xft-antialias = 1;
        gtk-xft-hinting = 1;
        gtk-xft-hintstyle = "hintfull";
        gtk-xft-rgba = "rgb";
      };
      gtk4.extraConfig = {
        gtk-application-prefer-dark-theme = 1;
        gtk-cursor-theme-name = "Catppuccin-Frappe-Light-Cursors";
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