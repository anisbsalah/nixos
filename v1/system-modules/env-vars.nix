{ config, lib, pkgs, ... }:

{
  environment.variables = {
    EDITOR = "nano";
    BROWSER = "brave";
    GTK_THEME = "Arc-Dark";
    # QT_STYLE_OVERRIDE = lib.mkForce "kvantum";
    # QT_QPA_PLATFORMTHEME = lib.mkForce "qt5ct";
  };

  environment.sessionVariables = rec {
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_STATE_HOME = "$HOME/.local/state";

    # Not officially in the specification
    XDG_BIN_HOME = "$HOME/.bin";
    PATH = [ "${XDG_BIN_HOME}" ];
  };
}
