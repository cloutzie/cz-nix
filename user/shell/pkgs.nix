{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gotop
    neofetch
  ];
}
