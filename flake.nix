{
  description = "Miko's NixOS configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:

    let
      system = "x86_64-linux";
    in {

    # nixos - system hostname
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        pkgs-stable = import nixpkgs-stable {
          inherit system;
          config.allowUnfree = true;
        };
        inherit inputs system;
      };
      modules = [
        ./nixos/configuration.nix
      ];
    };

    homeConfigurations.miko = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ ./home-manager/home.nix ];
    };
  };
}
