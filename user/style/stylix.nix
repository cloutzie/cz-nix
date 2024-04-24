{ config, pkgs, ... }:

{
  #stylix.image = ~/.background-image
  stylix.autoEnable = false;
  stylix.base16Scheme = ./apprentice.yaml;
  stylix.targets.alacritty.enable = true;
}
