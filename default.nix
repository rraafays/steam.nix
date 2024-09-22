{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    package = pkgs.steam.override {
      extraEnv = {
        SDL_VIDEODRIVER = "windows";
      };
    };
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };
  services.udev.packages = [ pkgs.game-devices-udev-rules ];
}
