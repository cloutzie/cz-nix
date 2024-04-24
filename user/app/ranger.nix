{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    ranger
  ];
  programs.ranger = {
    enable = true;

    rifle = [
      { condition = "mime ^text"; command = "nvim -- $@"; }
    ];
  };
}
