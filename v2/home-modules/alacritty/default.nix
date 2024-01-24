{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {
    programs.alacritty.enable = true;
    
    xdg.configFile."alacritty" = {
      source = ./alacritty.yml;
      target = "alacritty/alacritty.yml";
    };
    xdg.configFile."colors" = {
      source = ./colors.yml;
      target = "alacritty/colors.yml";
    };
  };
}