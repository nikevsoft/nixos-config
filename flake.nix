{
  description = "Experimental Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosModules = {
        gnome = { pkgs, ... }: {
          services.xserver.displayManager.gdm.enable = true;
          services.xserver.desktopManager.gnome.enable = true;

          environment.gnome.excludePackages = (with pkgs; [ 
            gnome-text-editor
            gnome-console
            gnome-photos
            gnome-tour
          ]) ++ (with pkgs.gnome; [
            gnome-initial-setup
            gnome-music
            gnome-contacts
            yelp
            geary
            epiphany
          ]);

          environment.systemPackages = with pkgs; [
            gnome.gnome-settings-daemon
            gnome.gnome-session
            gnome.gnome-tweaks
          ];

          programs.dconf.enable = true;
        };

        ssh = { pkgs, ... }: {
          # https://github.com/NixOS/nixpkgs/issues/24311
          programs.ssh.askPassword = "";
        };

      };

      nixosConfigurations = {
        reika = lib.nixosSystem {
          inherit system;
          modules = with self.nixosModules; [ 
            ./configuration.nix 
            gnome 
            ssh
          ];
        };
      };

      homeConfigurations = {
        kevin = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules =  [ ./home.nix ];
        };
      };
    };
}
