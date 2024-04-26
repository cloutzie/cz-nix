{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
    };
    bashrcExtra = ''
      eval "$(starship init bash)"
    '';
  };
}
