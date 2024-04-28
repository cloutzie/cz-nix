{ config, pkgs, userSettings, ... }:

{
  imports = [
    ../../user/terminal/alacritty.nix
    ../../user/wm/i3.nix
    ../../user/wm/polybar.nix
    ../../user/app/ranger.nix
    ../../user/terminal/shell-pkgs.nix
    ../../user/app/social-pkgs.nix
    ../../user/app/firefox.nix
    ../../system/hardware/pkgs.nix
    ../../user/app/neovim.nix
    ../../user/terminal/sh.nix
    ../../user/terminal/starship.nix
    ../../user/wm/picom.nix
    ../../user/dev/direnv.nix
  ];

  programs.home-manager.enable = true;

  home.username = "cz";
  home.homeDirectory = "/home/cz";
  
  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
    pkgs.prismlauncher
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/cz/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

}
