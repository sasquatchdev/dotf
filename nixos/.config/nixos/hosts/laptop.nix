# Laptop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/interactive.nix

      ../modules/services/touchpad.nix
    ];

  networking.hostName = "nix-laptop";
}
