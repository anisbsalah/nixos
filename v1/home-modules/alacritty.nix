{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username}.programs = {
    alacritty = {
      enable = true;
      settings = {
        window = {
          opacity = 0.9;
          startup_mode = "Maximized";
          position = {
            x = 0;
            y = 0;
          };
        };

        colors = {
          draw_bold_text_with_bright_colors = false;
          primary = {
            background = "0x383c4a";
            foreground = "0xd3dae3";
          };
          normal = {
            black = "0x4b5164";
            blue = "0x4877b1";
            cyan = "0x5294e2";
            green = "0x5ca75b";
            magenta = "0xa660c3";
            red = "0xe14245";
            white = "0xa9a9aa";
            yellow = "0xf6ab32";
          };
          bright = {
            black = "0x616981";
            blue = "0x8ca9bf";
            cyan = "0x73c5e2";
            green = "0xadd488";
            magenta = "0xe2afec";
            red = "0xe16f7e";
            white = "0xfcfcfc";
            yellow = "0xfdc35f";
          };
          dim = {
            black = "0x2c2f3a";
            blue = "0x2b486b";
            cyan = "0x1b668f";
            green = "0x4b7c16";
            magenta = "0x614a73";
            red = "0x783228";
            white = "0x63686d";
            yellow = "0xb65619";
          };
        };
        
        font = {
          size = 12.0;
          normal = {
            family = "JetBrainsMono Nerd Font";
            style = "Regular";
          };
          bold = {
            family = "JetBrainsMono Nerd Font";
            style = "Bold";
          };
          italic = {
            family = "JetBrainsMono Nerd Font";
            style = "Italic";
          };
          bold_italic = {
            family = "JetBrainsMono Nerd Font";
            style = "Bold Italic";
          };
        };

        cursor = {
          style = {
            shape = "Beam";
            blinking = "On";
          };
          thickness = 0.15;
        };

        scrolling.history = 50000;
        selection.save_to_clipboard = true;

        keyboard = {
          bindings = [
            { key = "F11"; action = "ToggleFullscreen"; }
            { key = "T"; mods = "Control|Shift"; action = "CreateNewWindow"; }
          ];
        };
      };
    };
  };
}