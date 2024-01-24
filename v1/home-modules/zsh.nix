{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username}.programs = {
    zsh = {
      enable = true;
      autocd = true;
      dotDir = ".config/zsh";
      history = {
        path = ".config/zsh/history.zsh";
        save = 50000;
        size = 50000;
        expireDuplicatesFirst = true;
        ignoreAllDups = true;
      };
      enableAutosuggestions = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ "sudo" ];
      };
      shellAliases = import ./shell_aliases.nix { inherit pkgs; };
    };
  };
}
