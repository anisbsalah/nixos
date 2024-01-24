{ config, pkgs, ... }:

{
  # Enable the CINNAMON Desktop Environment.
  services.xserver.displayManager.startx.enable = false;
  services.xserver.desktopManager.cinnamon.enable = true;
  services.xserver.displayManager.lightdm.greeters.slick = {
    enable = true;
    draw-user-backgrounds = false;
    theme.name = "Arc-Dark";
    iconTheme.name = "Papirus-Dark";
    cursorTheme = {
      name = "Catppuccin-Frappe-Light-Cursors";
      size = 16;
    };
    font.name = "Noto Sans Bold 11";
  };

  environment.systemPackages = with pkgs; [
    blueman
  ];

}
