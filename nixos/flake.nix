{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    xremap-flake.url = "github:xremap/nix-flake";
  };

  outputs = { self, nixpkgs, ... } @ inputs :
  let
    lib = nixpkgs.lib;
  in 
  {
    nixosConfigurations.nixos = lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [ ./configuration.nix ];
    };  
  };
}
