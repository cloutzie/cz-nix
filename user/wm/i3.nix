{ config, lib, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = rec {
      modifier = "Mod4";

      window.border = 0;

      gaps = {
        inner = 10;
	outer = 10;
      };
      keybindings = lib.mkOptionDefault {
        "${modifier}+Return" = "exec alacritty";
      };
    };
  };
}
