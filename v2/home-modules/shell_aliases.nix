{ pkgs }:

{
  ls = "eza";
  l = "eza -lbF --group-directories-first --icons";
  ll = "eza -lbGF --group-directories-first --icons";
  la = "eza -labF --group-directories-first --icons";
  lla = "eza -labGF --group-directories-first --icons";
  md = "mkdir -p";
  swap = "swapon --show";
  s = "sudo";
  rr = "rm -rf";

  ### Adding flags
  bat = "bat --color=always --style=plain --pager=never";
  df = "df -h";
  free = "free -h";
  ip = "ip -c";

  ### Git
  grh = "git reset --hard";
  gcl = "git clone";

  ### System management
  po = "systemctl poweroff";
  rb = "systemctl reboot";

  ### Nix commands
  clean = "nix-collect-garbage -d";
  nrs = "sudo nixos-rebuild switch";
  nrb = "sudo nixos-rebuild boot";
}