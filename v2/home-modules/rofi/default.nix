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
      "rofi/config.rasi".text = (builtins.readFile ./config.rasi);
    };
  };
}
