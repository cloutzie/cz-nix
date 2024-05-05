{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    
    inactiveOpacity = 0.75;
    settings = {
      corner-radius = 2;
    };
  };
}
