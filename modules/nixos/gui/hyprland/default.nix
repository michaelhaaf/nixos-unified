# Adapted from https://github.com/srid/nixos-config/blob/master/modules/nixos/linux/gui/hyprland/default.nix
{ flake, pkgs, ... }:

let
  inherit (flake) inputs;
  hyprlandPkgs = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system};
in
{
  programs.hyprland = {
    enable = true;
    package = hyprlandPkgs.hyprland;
    portalPackage = hyprlandPkgs.xdg-desktop-portal-hyprland;
  };

  security.pam.services.hyprlock = { };

  home-manager.sharedModules = [ ./home ];

  # hint Electron apps to use Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
    grimblast

    acpi
    acpilight
    pavucontrol

    # TODO: https://github.com/nix-community/home-manager/pull/5489
    hyprshade
    hyprshot
    hyprpaper
    playerctl

    # TODO: https://github.com/nix-community/home-manager/issues/5899
    hyprlock

    wl-clipboard
  ];
}
