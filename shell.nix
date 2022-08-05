{ pkgs, ... }: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
  };
  environment.systemPackages = with pkgs; [
    curl
    ffmpeg
    file
    htop
    imagemagick
    killall
    lsof
    man-pages
    nano
    pciutils
    rmtrash
    tldr
    trash-cli
    wget
  ];
}
