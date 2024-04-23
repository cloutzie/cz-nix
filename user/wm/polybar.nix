{ config, pkgs, ... }:

{
  services.polybar = rec {
    enable = true;

    package = pkgs.polybar.override {
      i3GapsSupport = true;
      alsaSupport = true;
    };
    
    script = "polybar bar";
  };
}
