{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {

    dconf = {
      enable = true;

      # Appearance
      settings."org/cinnamon/desktop/interface".cursor-theme = "Qogir";
      settings."org/cinnamon/desktop/interface".cursor-size = 16;
      settings."org/cinnamon/desktop/interface".gtk-theme = "Arc-Dark";
      settings."org/cinnamon/desktop/interface".icon-theme = "Papirus-Dark";
      settings."org/cinnamon/theme".name = "Arc-Dark";

      # Font selection
      settings."org/cinnamon/desktop/interface".font-name = "Noto Sans 11";
      settings."org/cinnamon/desktop/wm/preferences".titlebar-font = "Noto Sans Bold 11";
      settings."org/nemo/desktop".font = "Noto Sans 11";
      settings."org/gnome/desktop/interface".font-name = "Noto Sans 11";
      settings."org/gnome/desktop/interface".document-font-name = "Noto Sans 11";
      settings."org/gnome/desktop/interface".monospace-font-name = "Hack 10";

      # Keyboard & Touchpad
      settings."org/cinnamon/desktop/interface".keyboard-layout-show-flags = false;
      settings."org/cinnamon/desktop/peripherals/touchpad".edge-scrolling-enabled = true;
      settings."org/cinnamon/desktop/peripherals/touchpad".two-finger-scrolling-enabled = false;
      settings."org/cinnamon/desktop/peripherals/touchpad".natural-scroll = false;

      # Nemo
      settings."org/nemo/preferences".show-new-folder-icon-toolbar = true;
      settings."org/nemo/preferences".show-open-in-terminal-toolbar = true;

      # Xed
      settings."org/x/editor/plugins".active-plugins = "['wordcompletion', 'time', 'textsize', 'taglist', 'sort', 'modelines', 'joinlines', 'filebrowser', 'docinfo', 'open-uri-context-menu', 'bracketcompletion']";
      settings."org/x/editor/preferences/editor".bracket-matching = true;
      settings."org/x/editor/preferences/editor".display-line-numbers = true;
      settings."org/x/editor/preferences/editor".use-default-font = false;
      settings."org/x/editor/preferences/editor".editor-font = "JetBrainsMono Nerd Font 12";
      settings."org/x/editor/preferences/editor".scheme = "oblivion";
      settings."org/x/editor/preferences/editor".highlight-current-line = false;
      settings."org/x/editor/preferences/editor".prefer-dark-theme = true;
    };
  };
}
