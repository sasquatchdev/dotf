{ ... }:
{
  imports = 
    [
      ../configuration.nix
      ../modules/headless.nix
      
      <nixos-wsl/modules>
    ];

  wsl.enable = true;
  wsl.defaultUser = "sasquatchdev";

  networking.hostName = "nix-wsl";
}
