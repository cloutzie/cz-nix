{
  description = "Cloutzie Flake";

  outputs = { self, nixpkgs, home-manager, ... }: 
    let

      #		SYSTEM SETTINGS
      systemSettings = {
        system		= "x86_64-linux";		# system architecture
        hostname	= "nixos";			# hostname
        profile 	= "desktop";			# select a profile
        timezone	= "America/New-York";		# select timezone
        locale		= "en_US.UTF-8";		# select locale
      };

      #		USER SETTINGS
      userSettings = {
        username 	= "cz";				# username
        name		= "walker";			# name
        email		= ""; 				# email
        dotfilesDir	= "~/.dotfiles";		# path of config repo
        theme		= "";				# theme from ./themes
        wm		= "i3";				# window manager
        wmType		= "x11";			# display server
        browser		= "firefox";			# default browser
      };

      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${systemSettings.system};

    in {
      homeConfigurations = {
        cz = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
	  modules = [
            (./. + "/hosts/${systemSettings.profile}/home.nix")
	  ];
	  extraSpecialArgs = {
	    inherit systemSettings;
	    inherit userSettings;
	  };
	};
      };
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          system = systemSettings.system;
          modules = [ 
	    (./. + "/hosts/${systemSettings.profile}/configuration.nix")
	  ];
        };
      };
    };
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };



}
