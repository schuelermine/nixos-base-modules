{
  outputs = { self }: {
    nixosModules = {
      console = import ./console.nix;
      i18n = import ./i18n.nix;
      kernel = import ./kernel.nix;
      nix = import ./nix.nix;
      pipewire = import ./pipewire.nix;
      plymouth = import ./plymouth.nix;
      shell = import ./shell.nix;
      systemd-boot = import ./systemd-boot.nix;
      systemd-target-fix = import ./systemd-target-fix.nix;
    };
  };
}
