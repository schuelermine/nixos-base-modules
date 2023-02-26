{
  outputs = { self }: {
    nixosModules = {
      default = import ./.;
      console = import ./console.nix;
      desktop = import ./desktop.nix;
      fonts = import ./fonts.nix;
      i18n = import ./i18n.nix;
      kernel = import ./kernel.nix;
      nix = import ./nix.nix;
      pipewire = import ./pipewire.nix;
      plymouth = import ./plymouth.nix;
      shell = import ./shell.nix;
      systemd-boot = import ./systemd-boot.nix;
    };
  };
}
