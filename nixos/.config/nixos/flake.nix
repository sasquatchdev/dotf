{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    xremap-flake.url = "github:xremap/nix-flake";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs = { self, nixpkgs, ... } @ inputs :
  let
    system = "x86_64-linux";
  in 
  {
    nixosConfigurations.nix-desktop = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit system inputs; };
      modules = [ ./hosts/desktop.nix ];
    };  

    nixosConfigurations.nix-laptop = nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = { inherit system inputs; };
      modules = [ ./hosts/laptop.nix ];
    };  
  };
}
