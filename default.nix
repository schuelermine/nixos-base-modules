args@{ ... }:
{
  imports = [
    ./console.nix
    (import ./desktop.nix args)
    ./fonts.nix
    ./i18n.nix
    ./kernel.nix
    ./nix.nix
    ./pipewire.nix
    ./plymouth.nix
    ./shell.nix
    ./systemd-boot.nix
    ./systemd-target-fix.nix
  ];
}
