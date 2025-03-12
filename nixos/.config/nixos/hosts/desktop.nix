# Desktop Host
# -> Generic

{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/interactive.nix
    ];

  networking.hostName = "nix-desktop";
}
