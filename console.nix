{ pkgs, ... }: {
  console = {
    packages = [ pkgs.terminus-font ];
    font = "ter-v28b";
    useXkbConfig = true;
    earlySetup = true;
  };
}
