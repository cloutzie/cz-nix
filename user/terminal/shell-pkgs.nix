{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gotop
    fastfetch
    cava
    unzip
    rzip
    pandoc
    timer
    xclip
  ];
}
