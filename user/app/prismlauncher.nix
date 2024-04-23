{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.prismlauncher ];
}
