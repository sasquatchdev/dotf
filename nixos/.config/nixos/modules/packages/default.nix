{ pkgs, ... }:
{
  imports =
    [
      ./firefox.nix
      ./console.nix
      ./fish.nix
      ./spotify.nix
    ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Packages that do not require any
  # special installation or configuration
  environment.systemPackages = with pkgs; [
     neovim
     vim

     git
     github-cli

     stow

     kitty
     pkgs.starship
  ];
}
