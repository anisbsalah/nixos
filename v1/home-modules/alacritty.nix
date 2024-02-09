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
            dim_foreground = "0xd3dae3";
            bright_foreground = "0xd3dae3";
          };
          cursor = {
            text = "0x383c4a";
            cursor = "0xd3dae3";
          };
          normal = {
            black = "0x4b5164";
            red = "0xe14245";
            green = "0x5ca75b";
            yellow = "0xf6ab32";
            blue = "0x4877b1";
            magenta = "0xa660c3";
            cyan = "0x5294e2";
            white = "0xa9a9aa";
          };
          bright = {
            black = "0x616981";
            red = "0xe16f7e";
            green = "0xadd488";
            yellow = "0xfdc35f";
            blue = "0x8ca9bf";
            magenta = "0xe2afec";
            cyan = "0x73c5e2";
            white = "0xfcfcfc";
          };
          dim = {
            black = "0x2c2f3a";
            red = "0x783228";
            green = "0x4b7c16";
            yellow = "0xb65619";
            blue = "0x2b486b";
            magenta = "0x614a73";
            cyan = "0x1b668f";
            white = "0x63686d";
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
