# Desktop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/packages
      ../modules/system
      ../modules/services
    ];
}
