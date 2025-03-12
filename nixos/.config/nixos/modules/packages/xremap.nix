{ inputs, ... }:
{
  imports = [
    inputs.xremap-flake.nixosModules.default
  ];

  services.xremap = {
    withHypr = true;
    userName = "sasquatchdev";
    yamlConfig = '' 
      modmap:
        - name: Cap
          remap:
            CapsLock: 
              held: RightAlt
              alone: CapsLock
    '';
  };
}
