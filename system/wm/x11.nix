{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    windowManager = {
      i3.enable = true;
    };
    displayManager = {
      lightdm = {
        enable = true;
      };
    };
  };
}
