{
  description = "NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = {self, nixpkgs, ... }@inputs: {
    nixosConfigurations.argos = nixpkgs.lib.nixosSystem {
      modules = [
        ./hosts/argos/configuration.nix
      ];
    };
  };
}
