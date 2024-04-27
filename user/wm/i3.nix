{ config, lib, pkgs, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = rec {
      modifier = "Mod4";

      gaps = {
        inner = 20;
	outer = 20;
      };
      keybindings = lib.mkOptionDefault {
        "${modifier}+Return" = "exec --no-startup-id alacritty";
      };
    };
    extraConfig = ''
      default_border pixel 0
    '';
  };
}
