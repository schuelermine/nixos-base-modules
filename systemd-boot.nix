{
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      timeout = 0;
      efi.canTouchEfiVariables = true;
    };
  };
}
