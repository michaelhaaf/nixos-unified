{ pkgs, ... }:
{
  home.packages = with pkgs; [
    yubikey-personalization
  ];
}
