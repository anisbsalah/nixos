{ config, pkgs, variables, ... }:

let
  username = "anisbsalah";
  wallpaperImg = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/anisbsalah/Wallpapers/main/AbS-Wallpapers/abs-54.jpg";
    sha256 = "sha256-yfKybtlR/vVPPnFCo9G1nW22VsWp/3bFRjAwSTrUW0E=";
  };
in

{
  home-manager.users.${username} = {
    dconf.settings."org/gnome/desktop/background".picture-uri = "file://${wallpaperImg}";
    dconf.settings."org/gnome/desktop/background".picture-options = "stretched";
  };
}
