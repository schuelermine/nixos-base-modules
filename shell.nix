{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [ nano ripgrep wget ];
}
