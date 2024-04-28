{ config, lib, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "Hack" ]; })
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = [ "Hack Nerd Font" ];
	serif = [ "Hack Nerd Font" ];
	sansSerif = [ "Hack Nerd Font" ];
	monospace = [ "Hack Nerd Font" ];
      };

    };
  };
}
