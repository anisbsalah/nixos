{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {
    programs = {
      rofi.enable = true;
    };

    xdg.configFile = {
      "rofi/config.rasi".text = ''
        /*******
          Rofi
        *******/

        /*****----- Configuration -----*****/

        configuration {
            modi:                       "window,run,drun,filebrowser,ssh,combi,keys";
            font:                       "JetBrainsMono Nerd Font 12";
            show-icons:                 true;
            icon-theme:                 "Papirus";
            display-drun:               "  Apps:";
            display-run:                "  Run:";
            display-filebrowser:        "  Files:";
            display-window:             "  Windows:";
            drun-display-format:        "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
        }

        /*****----- Global Properties -----*****/

        @theme "/dev/null"
        /** Arc colors **/
        * {
            background:     #2F343FFF;
            background-alt: #383C4AFF;
            foreground:     #BAC5D0FF;
            selected:       #5294E2FF;
            active:         #98C379FF;
            urgent:         #E06B74FF;
        }

        /*****----- Main Window -----*****/

        window {
            transparency:                "real";
            location:                    center;
            anchor:                      center;
            fullscreen:                  false;
            width:                       700px;
            x-offset:                    0px;
            y-offset:                    0px;

            enabled:                     true;
            margin:                      0px;
            padding:                     0px;
            border:                      0px solid;
            border-radius:               12px;
            border-color:                @selected;
            background-color:            @background;
            cursor:                      "default";
        }

        /*****----- Main Box -----*****/

        mainbox {
            enabled:                     true;
            spacing:                     10px;
            margin:                      0px;
            padding:                     20px;
            border:                      0px solid;
            border-radius:               0px 0px 0px 0px;
            border-color:                @selected;
            background-color:            transparent;
            children:                    [ "inputbar", "listview" ];
        }

        /*****----- Inputbar -----*****/

        inputbar {
            enabled:                     true;
            spacing:                     10px;
            margin:                      0px;
            padding:                     15px;
            border:                      0px solid;
            border-radius:               12px;
            border-color:                @selected;
            background-color:            @background-alt;
            text-color:                  @foreground;
            children:                    [ "prompt", "entry" ];
        }

        prompt {
            enabled:                     true;
            background-color:            inherit;
            text-color:                  inherit;
        }
        textbox-prompt-colon {
            enabled:                     true;
            expand:                      false;
            str:                         ": ";
            background-color:            inherit;
            text-color:                  inherit;
        }
        entry {
            enabled:                     true;
            background-color:            inherit;
            text-color:                  inherit;
            cursor:                      text;
            placeholder:                 "";
            placeholder-color:           inherit;
        }

        /*****----- Listview -----*****/

        listview {
            enabled:                     true;
            columns:                     1;
            lines:                       7;
            cycle:                       true;
            dynamic:                     true;
            scrollbar:                   false;
            layout:                      vertical;
            reverse:                     false;
            fixed-height:                true;
            fixed-columns:               true;
    
            spacing:                     5px;
            margin:                      0px;
            padding:                     0px;
            border:                      0px solid;
            border-radius:               0px;
            border-color:                @selected;
            background-color:            transparent;
            text-color:                  @foreground;
            cursor:                      "default";
        }
        scrollbar {
            handle-width:                5px ;
            handle-color:                @selected;
            border-radius:               0px;
            background-color:            @background-alt;
        }

        /*****----- Elements -----*****/

        element {
            enabled:                     true;
            spacing:                     10px;
            margin:                      0px;
            padding:                     5px;
            border:                      0px solid;
            border-radius:               12px;
            border-color:                @selected;
            background-color:            transparent;
            text-color:                  @foreground;
            cursor:                      pointer;
        }
        element normal.normal {
            background-color:            @background;
            text-color:                  @foreground;
        }
        element selected.normal {
            background-color:            @selected;
            text-color:                  @background;
        }
        element-icon {
            background-color:            transparent;
            text-color:                  inherit;
            size:                        32px;
            cursor:                      inherit;
        }
        element-text {
            background-color:            transparent;
            text-color:                  inherit;
            highlight:                   inherit;
            cursor:                      inherit;
            vertical-align:              0.5;
            horizontal-align:            0.0;
        }

        /*****----- Message -----*****/

        error-message {
            padding:                     15px;
            border:                      2px solid;
            border-radius:               12px;
            border-color:                @selected;
            background-color:            @background;
            text-color:                  @foreground;
        }
        textbox {
            background-color:            @background;
            text-color:                  @foreground;
            vertical-align:              0.5;
            horizontal-align:            0.0;
            highlight:                   none;
        }
      '';
    };
  };
}
