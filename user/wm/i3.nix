{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = rec {
      modifier = "Mod4";
      bars = [ ];

      window.border = 0;

      gaps = {
        inner = 15;
	outer = 5;
      };
      keybindings = lib.mkOptionDefault {
        "${modifier}+Return" = "exec alacritty";
      };
    };
  };
}
