{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    
    inactiveOpacity = 0.5;
    settings = {
      corner-radius = 5;
    };
  };
}
