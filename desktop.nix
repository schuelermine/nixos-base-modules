{ pkgs, ... }: {
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
      ];
  };
}
