{ pkgs, ... }:
{
  imports =
    [
      inputs.xremap-flake.nixosModules.default
    ];

  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
     neovim
     vim

     git
     github-cli

     stow

     kitty
     starship

     spotify
  ];
}
