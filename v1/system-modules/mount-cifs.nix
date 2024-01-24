{ config, pkgs, ... }:

let
username = "anisbsalah";
in

{
  fileSystems = {
    "/mnt/SAMBASHARE" = {
      device = "//192.168.1.13/SAMBASHARE";
      fsType = "cifs";
      options = ["uid=1000" "gid=100" "rw" "credentials=/home/${username}/.smb-secrets" "iocharset=utf8"];
  };
  };
}