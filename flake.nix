{
  inputs.themed-gnome-shell-nix.url = "github:schuelermine/themed-gnome-shell-nix";
  outputs = { self, themed-gnome-shell-nix }:
    let args = { themed-gnome-shell-overlay = themed-gnome-shell-nix.overlays.default; };
    in
    {
      nixosModules = {
        default = import ./. args;
        console = import ./console.nix;
        desktop = import ./desktop.nix { inherit (args) themed-gnome-shell-overlay; };
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
