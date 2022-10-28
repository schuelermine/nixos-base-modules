{ pkgs, ... }: {
  nixpkgs.overlays = [
    (selfPkgs: superPkgs: {
      libadwaita = superPkgs.libadwaita.overrideAttrs (selfAttrs: superAttrs: {
        src = selfPkgs.fetchzip {
          url = "http://archive.ubuntu.com/ubuntu/pool/main/liba/libadwaita-1/libadwaita-1_1.2.0.orig.tar.xz";
          hash = "sha256-V9AaObT6+9JCHKdhWaDrYxEoBCrjnCvwbddSuUsUmKw=";
        };
      });
    })
  ];
  services = {
    xserver = {
      enable = true;
      desktopManager.gnome.enable = true;
      displayManager.gdm.enable = true;
      libinput.enable = true;
    };
    printing.enable = true;
  };
  environment = {
    gnome.excludePackages = with pkgs; [
      gnome.gnome-calculator
      gnome.epiphany
      gnome-console
    ];
    systemPackages = with pkgs;
      (with aspellDicts; [ de en en-computers en-science ])
      ++ (with hunspellDicts; [
        de-de
        en-gb-ise
        en-gb-ize
        en-gb-large
        en-us
        en-us-large
      ]) ++ [
        gnome.gnome-tweaks
        qalculate-gtk
        kitty
        firefox
        mpv
        vlc
        gnome.gnome-sound-recorder
        gimp
        libreoffice-fresh
        xorg.xwininfo
        xorg.xkill
        xsel
        yaru-theme
      ];
  };
}
