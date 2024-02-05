{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {
    programs.yazi.enable = true;
    xdg.configFile."yazi/yazi.toml".source = ./yazi.toml;
    xdg.configFile."yazi/keymap.toml".source = ./keymap.toml;
    xdg.configFile."yazi/theme.toml".source = ./theme.toml;
  };
}
