{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;

    settings = {
      corner-radius = 10;
    };
  };
}
