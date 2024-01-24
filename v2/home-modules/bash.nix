{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username}.programs = {
    bash = {
      enable = true;
      enableCompletion = true;
      shellAliases = import ./shell_aliases.nix { inherit pkgs; };
      historyControl = [ "ignorespace" "ignoredups" "erasedups" ];
    };
  };
}
