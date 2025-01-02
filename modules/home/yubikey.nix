{ pkgs, ... }:
{
  home.packages = with pkgs; [
    yubikey-personalization
  ];

  # Might need to move this out of home to get udev rules.
  # But, I want it home for non NixOS systems... TODO
  # Inspired by: https://rzetterberg.github.io/yubikey-gpg-nixos.html
  #
  # programs.ssh.startAgent = false;
  # services.pcscd.enable = true;
  #
  # environment.systemPackages = with pkgs; [
  #   gnupg
  #   yubikey-personalization
  # ];
  #
  # environment.shellInit = ''
  #   gpg-connect-agent /bye
  #   export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  # '';
  #
  # services.udev.packages = with pkgs; [
  #   yubikey-personalization
  # ];
}
