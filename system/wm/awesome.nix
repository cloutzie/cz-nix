{ ... }:

{
  imports = [
    ./x11.nix
  ];

  services.xserver = {
    windowManager.awesome = {
      enable = true;
    };
  };
}
