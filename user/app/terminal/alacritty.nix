{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    
    settings = {
      window = {
        padding = { y = 5; x = 5; };
	dimensions = {
          lines = 75;
	  columns = 100;
	};
      };

      colors = {
        primary = {
          background = "0x1E1E2E";   
	  foreground = "0xCDD6F4";
	};
	cursor = {
          text = "0x1E1E2E";
	  cursor = "0xF5E0DC";
	};
	search = {
          matches = {
            foreground = "0x1E1E2E";
	    background = "0xA6ADC8";
	  };
	  focused_match = {
            foreground = "0x1E1E2E";
	    background = "0xA6E3A1";
	  };
	  footer_bar = {
            foreground = "0x1E1E2E";
	    background = "0xA6ADC8";
	  };
	};
	hints = {
          start = {
            foreground = "0x1E1E2E";
	    background = "0xF9E2AF";
	  };
	  end = {
            foreground = "0x1E1E2E";
	    background = "0xA6ADC8";
	  };
	};
	selection = {
          text = "0x1E1E2E";
	  background = "0xF5E0DC";
	};
	normal = {
	  black = "0x45475A";
	  red = "0xF38BA8";
          green = "0xA6E3A1";
	  yellow = "0xF9E2AF";
	  blue = "0x89B4FA";
	  magenta = "0xF5C2E7";
	  cyan = "0x94E2D5";
	  white = "0xBAC2DE";
	};
	bright = {
          black = "0x585B70";
	  red = "0xF38BA8";
	  green = "0xA6E3A1";
	  yellow = "0xF9E2AF";
	  blue = "0x89B4FA";
	  magenta = "0xF5C2E7";
	  cyan = "0x94E2D5";
	  white = "0xA6ADC8";
	};
      };
    };
  };
}
