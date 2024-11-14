{ pkgs, ... }:

{
  services.udev.packages = [ pkgs.game-devices-udev-rules ];
  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
    package = pkgs.steam.override {
      # extraEnv = {
      #   SDL_VIDEODRIVER = "windows";
      #   ENABLE_VKBASALT = 0;
      #   PROTON_HIDE_NVIDIA_GPU = 0;
      #   PROTON_ENABLE_NVAPI = 1;
      #   PROTON_ENABLE_NGX_UPDATER = 1;
      #   PROTON_USE_D9VK = 1;
      #   PROTON_USE_VKD3D = 1;
      #   DXVK_ASYNC = 1;
      #   __GL_VRR_ALLOWED = 1;
      #   PROTON_NO_ESYNC = 1;
      # };
    };
  };

  environment = {
    systemPackages = with pkgs; [
      mangohud
      gamescope
      er-patcher
    ];
  };
}
