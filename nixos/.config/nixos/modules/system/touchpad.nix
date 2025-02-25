# While this would be considered a
# "system" service, it is only required
# on certain hosts, which is why i'm
# placing it here

{ ... }:
{
  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
}
