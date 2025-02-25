# Desktop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/packages
      ../modules/core
      ../modules/services
    ];

  networking.hostName = "nix-desktop";
}
