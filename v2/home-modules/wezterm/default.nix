{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {
    programs.wezterm.enable = true;
    xdg.configFile."wezterm/wezterm.lua".source = ./wezterm.lua;
  };
}
