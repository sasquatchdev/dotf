# Desktop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/interactive
    ];

  networking.hostName = "nix-desktop";
}
