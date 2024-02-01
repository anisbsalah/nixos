{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {

    dconf = {
      enable = true;

      settings = {

        # Appearance
        "org/cinnamon/desktop/interface".cursor-theme = "Catppuccin-Frappe-Light-Cursors";
        "org/cinnamon/desktop/interface".cursor-size = 16;
        "org/cinnamon/desktop/interface".gtk-theme = "Arc-Dark";
        "org/cinnamon/desktop/interface".icon-theme = "Papirus-Dark";
        "org/cinnamon/theme".name = "Arc-Dark";

        # Font selection
        "org/cinnamon/desktop/interface".font-name = "Noto Sans 11";
        "org/cinnamon/desktop/wm/preferences".titlebar-font = "Noto Sans Bold 11";
        "org/nemo/desktop".font = "Noto Sans 11";

        # Keyboard & Touchpad
        "org/cinnamon/desktop/interface".keyboard-layout-show-flags = false;
        "org/cinnamon/desktop/peripherals/touchpad".edge-scrolling-enabled = true;
        "org/cinnamon/desktop/peripherals/touchpad".two-finger-scrolling-enabled = false;
        "org/cinnamon/desktop/peripherals/touchpad".natural-scroll = false;

        # Nemo
        "org/nemo/preferences".show-new-folder-icon-toolbar = true;
        "org/nemo/preferences".show-open-in-terminal-toolbar = true;

        # Xed
        "org/x/editor/plugins".active-plugins = "['wordcompletion', 'time', 'textsize', 'taglist', 'sort', 'modelines', 'joinlines', 'filebrowser', 'docinfo', 'open-uri-context-menu', 'bracketcompletion']";
        "org/x/editor/preferences/editor".bracket-matching = true;
        "org/x/editor/preferences/editor".display-line-numbers = true;
        "org/x/editor/preferences/editor".use-default-font = false;
        "org/x/editor/preferences/editor".editor-font = "JetBrainsMono Nerd Font 12";
        "org/x/editor/preferences/editor".scheme = "oblivion";
        "org/x/editor/preferences/editor".highlight-current-line = false;
        "org/x/editor/preferences/editor".prefer-dark-theme = true;
      };
    };
  };
}
