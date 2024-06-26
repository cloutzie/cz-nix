{ config, lib, pkgs, ... }:

let
  theme = import ../style/themes/catpuccin-clout-theme.nix;
in
{
  programs.i3status.enable = false;
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = rec {
      modifier = "Mod4";

      gaps = {
        inner = 20;
	outer = 20;
      };
      bars = [];
      colors = with theme.colors; {
        focused = {
	  background = overlay0;
          border = "#FFFFFF00";
	  childBorder = "#FFFFFF00";
	  indicator = "#FFFFFF00";
	  text = text;
	};
	unfocused = {
          background = surface0;
	  border = "#FFFFFF00";
	  childBorder = "#FFFFFF00";
	  indicator = "#FFFFFF00";
	  text = text;
	};
        focusedInactive = {
          background = surface0;
	  border = "#FFFFFF00";
	  childBorder = "#FFFFFF00";
	  indicator = "#FFFFFF00";
	  text = text;
	};
      };
      keybindings = lib.mkOptionDefault {
        "${modifier}+Return" = "exec --no-startup-id alacritty";
      };
      window = {
        titlebar = false;
	border = 0;
      };
    };
    extraConfig = ''
    '';
  };
}
