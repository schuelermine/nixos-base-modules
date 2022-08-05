{ pkgs }: {
  boot.plymouth = {
    enable = true;
    font = "${pkgs.fira}/share/fonts/opentype/FiraSans-Regular.otf";
  };
}
