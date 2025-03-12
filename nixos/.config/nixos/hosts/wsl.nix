{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/headless
      
      <nixos-wsl/modules>
    ];

  wsl.enable = true;
  wsl.defaultUser = "sasquatchdev";

  networking.hostName = "nix-wsl";
}
