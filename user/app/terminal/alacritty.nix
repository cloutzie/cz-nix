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
          background = "0x11111b";
	  foreground = "0xcdd6f4";
	};
	cursor = {
          text = "0xbac2de";
	  cursor = "0xeba0ac";
	};
	normal = {
          green = "0xa6e3a1";
	  yellow = "0xf9e2af";
	};
      };
    };
  };
}
