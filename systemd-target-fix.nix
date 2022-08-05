{ lib, ... }: { systemd.targets.network-online.wantedBy = lib.mkForce [ ]; }
