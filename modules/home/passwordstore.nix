{ pkgs, ... }:
{
# This is causing issues
  # programs.gnupg = {
  #   # Enabling the agent requires a system restart.
  #   # See https://github.com/srid/nixos-config/blob/master/modules/nixos/linux/passwordstore.nix
  #   agent = {
  #     enable = true;
  #     enableExtraSocket = true;
  #     pinentryFlavor = "curses";
  #   };
  # };
  home.packages = with pkgs; [
    gnupg
    (pass.withExtensions (ext: [ ext.pass-otp ]))
    # Pinentry doesn't work on WSL NixOS unless manually configured on gpg-agent.conf
    # See https://sigkill.dk/writings/guides/nixos_pass.html
    pinentry-curses
  ];
}
