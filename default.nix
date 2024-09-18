{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };
  services.udev.packages = [ pkgs.game-devices-udev-rules ];
}
