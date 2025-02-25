# Laptop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
    ];

  networking.hostName = "nix-laptop";
}
