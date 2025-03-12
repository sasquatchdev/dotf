{ ... }:
{
    imports = [
        ./boot
        ./core

        ./packages
        ./packages/firefox.nix
        ./packages/fish.nix
        ./packages/starship.nix
        ./packages/xremap.nix

        ./services/desktop
        ./services/sound
    ];
}