{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username} = {
    programs.starship = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
    xdg.configFile."starship.toml".source = ./starship.toml;
  };
}
