{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    
    settings = {
      character = {
        success_symbol = "[](bold prompt)";
        error_symbol = "[](bold red)";
      };
      directory = {
        style = "bold yellow";
      };


      cmd_duration = {
        format = "[$duration]($style)";
      };

      nix_shell = {
        format = "in [$symbol$state(\\($name\\))]($style) ";
        symbol = "❄️ ";
        impure_msg = "";
        pure_msg = "pure ";
      };
    };
  };
}
