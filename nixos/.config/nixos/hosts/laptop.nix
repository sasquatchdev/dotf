# Laptop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/packages
      ../modules/core
      ../modules/services

      ../modules/system/touchpad.nix
    ];

  networking.hostName = "nix-laptop";
}
