{ pkgs, ... }: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
  };
  environment.systemPackages = with pkgs; [
    choose
    curl
    fd
    ffmpeg
    file
    htop
    imagemagick
    killall
    lsof
    man-pages
    moreutils
    nano
    pciutils
    ripgrep
    rmtrash
    tldr
    trash-cli
    wget
  ];
}
