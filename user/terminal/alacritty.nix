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
	  cursor = "0xDC8A78";
	};
	vi_mode_cursor = {
	  text = "0x1E1E2E";
	  cursor = "0x7287FD";
	};
	search = {
          matches = {
            foreground = "0x1E1E2E";
	    background = "0xA6ADC8";
	  };
	  focused_match = {
            foreground = "0x1E1E2E";
	    background = "0x40A02B";
	  };
	  footer_bar = {
            foreground = "0x1E1E2E";
	    background = "0xA6ADC8";
	  };
	};
	hints = {
          start = {
            foreground = "0x1E1E2E";
	    background = "0xDF8E1D";
	  };
	  end = {
            foreground = "0x1E1E2E";
	    background = "0xA6ADC8";
	  };
	};
	selection = {
          text = "0x1E1E2E";
	  background = "0xDC8A78";
	};
	normal = {
	  black = "0x45475A";
	  red = "0xD20F39";
          green = "0x40A02B";
	  yellow = "0xDF8E1D";
	  blue = "0x1E66F5";
	  magenta = "0xEA76CB";
	  cyan = "0x179299";
	  white = "0x585B70";
	};
	bright = {
          black = "0x585B70";
	  red = "0xD20F39";
	  green = "0x40A02B";
	  yellow = "0xDF8E1D";
	  blue = "0x1E66F5";
	  magenta = "0xEA76CB";
	  cyan = "0x179299";
	  white = "0xA6ADC8";
	};
      };
    };
  };
}
