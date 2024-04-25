{ config, lib, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = rec {
      modifier = "Mod4";

      window = {
        border = 0;
	commands = [
          { command = "floating_border pixel 0"; criteria = { class = "Mozilla Firefox"; };}
	];
      };

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
