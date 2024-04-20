{ pkgs, ...}:

{
  imports = [

  ];

  services.xserver = {
    enable = true;
    layout = "us";
    displayManager = {
      lightdm.enable = true;
    };
  };
}
