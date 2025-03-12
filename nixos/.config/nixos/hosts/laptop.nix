# Laptop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/interactive

      ../modules/services/touchpad.nix
    ];

  networking.hostName = "nix-laptop";
}
