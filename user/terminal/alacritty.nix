{ ... }:

let
  theme = import ../style/themes/catpuccin-clout-theme.nix;
in
{
  programs.alacritty = {
    enable = true;

    settings = {

      window = {
        opacity = 0.75;
	padding = {
          x = 20;
	  y = 20;
	};
      };

      font = {
        
	normal = {
          family = "Hack Nerd Font";
	  style = "Light";
	};
	bold = {
          family = "Hack Nerd Font";
	  style = "Bold";
	};
      };

      colors = with theme.colors; {
        primary = {
          background = base;
	  foreground = text;
	  dim_foreground = text;
	  bright_foreground = text;
	};
	cursor = {
          text = base;
	  cursor = rosewater;
	};
	search = {
          matches = {
            foreground = base;
	    background = subtext0;
	  };
	  focused_match = {
            foreground = base;
	    background = green;
	  };
	};
	hints = {

	};
	selection = {

	};
	normal = {
          black = subtext1;
	  red = red;
	  green = green;
	  yellow = yellow;
	  blue = blue;
	  magenta = pink;
	  cyan = teal;
	  white = surface2;
	};
	bright = {
	  black = subtext0;
	  red = red;
	  green = green;
	  yellow = yellow;
	  blue = blue;
	  magenta = pink;
	  cyan = teal;
	  white = surface1;
       	};
      };
    };
  };
}
