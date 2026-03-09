{
  description = "Flake para el cliente de Tibia en NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        packages.tibia = import ./default.nix { inherit pkgs; };
        packages.default = self.packages.${system}.tibia;
        # Shell de desarrollo por si necesitas debuguear el entorno
        devShells.default = pkgs.mkShell {
          inputsFrom = [ self.packages.${system}.tibia ];
        };
      }
    );
}
