{ config, lib, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "RobotoMono" ]; })
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = [ "RobotoMono Nerd Font" ];
	serif = [ "RobotoMono Nerd Font" ];
	sansSerif = [ "RobotoMono Nerd Font" ];
	monospace = [ "RobotoMono Nerd Font" ];
      };

    };
  };
}
