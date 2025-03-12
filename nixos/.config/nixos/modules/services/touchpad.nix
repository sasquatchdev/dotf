# While this would be considered a
# "system" service, it is only required
# on certain hosts, which is why i'm
# placing it here

{ ... }:
{
  services.xserver.libinput.enable = true;
}
