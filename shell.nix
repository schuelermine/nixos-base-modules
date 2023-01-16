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
    killall
    lsof
    man-pages
    moreutils
    nano
    ripgrep
    rmtrash
    tldr
    trash-cli
    wget
    xsel
  ];
}
