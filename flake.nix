{
  inputs.themed-gnome-shell-nix.url = "github:schuelermine/themed-gnome-shell-nix";
  outputs = { self, themed-gnome-shell-nix }: {
    nixosModules = {
      default = import ./. { themed-gnome-shell-overlay = themed-gnome-shell-nix.overlays.default; };
      console = import ./console.nix;
      desktop = import ./desktop.nix { themed-gnome-shell-overlay = themed-gnome-shell-nix.overlays.default; };
      fonts = import ./fonts.nix;
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
