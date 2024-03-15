{
  description = "figgy flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url="github:nix-community/home-manager/release-23.11";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    home-manager.inputs.nixpkgs.follows= "nixpkgs";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }: 
    let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
        lib = nixpkgs.lib;
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
     in{
        nixosConfigurations = {
            nixos = lib.nixosSystem {
                inherit system;
                specialArgs = {inherit pkgs-unstable;};
                modules = [./configuration.nix];
            };

        };
        homeConfigurations = {
            rigby = home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [./home.nix];
            };

            };
    };    
}
