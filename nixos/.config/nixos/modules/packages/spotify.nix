{ inputs, system, ... }:
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${system};
in
{
  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      powerBar
    ];

    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };
}
