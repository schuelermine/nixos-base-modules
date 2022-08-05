{ pkgs, nixpkgs, ... }: {
  nix = {
    registry.nixpkgs.to = {
      owner = "NixOS";
      repo = "nixpkgs";
      rev = nixpkgs.sourceInfo.rev;
      type = "github";
    };
    nixPath = [ "nixpkgs=${nixpkgs}" ];
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    settings = { auto-optimise-store = true; };
  };
}
