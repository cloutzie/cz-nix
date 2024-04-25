{ config, pkgs, ... }:

{
  services.polybar = {
    enable = true;

    script = "polybar bar &";

    package = pkgs.polybar.override {
      i3Support = true;
    };
    config = {
      "bar/top" = {
        width = "100%";
	height = "3%";
	radius = 0;
      };
    };
  };
    

}
