{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
in

{
  home-manager.users.${username}.programs = {
    git = {
      enable = true;
      package = pkgs.gitAndTools.gitFull;
      userName = "${username}";
      userEmail = "anisbensalah.89@gmail.com";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };
  };
}
