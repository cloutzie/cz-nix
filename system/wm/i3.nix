{ ... }:

{
  imports = [
    ./x11.nix
  ];

  services.xserver = {
    windowManager.i3 = {
      enable = true;
    };
  };
}
