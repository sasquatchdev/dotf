# Global Config
#
# It is recommended that you do not directly
# change this, unless you really know what you're
# doing.

{ config, pkgs, inputs, ... }:

{
  imports =
    [
      inputs.xremap-flake.nixosModules.default
      ./hardware-configuration.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  users.users.sasquatchdev = {
    isNormalUser = true;
    description = "Carl Neben";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  system.stateVersion = "24.11";

}
