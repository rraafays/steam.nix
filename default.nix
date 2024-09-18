{ pkgs, ... }:

{
  services.udev.packages = [ pkgs.game-devices-udev-rules ];

  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };
}
