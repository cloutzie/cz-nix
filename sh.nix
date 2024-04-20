{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      latr = "ls -latr";
    };
  };
}
