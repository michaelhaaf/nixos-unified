{ pkgs, ... }:
{
  programs.foot = {
    # foot is designed only for Linux
    enable = pkgs.stdenv.isLinux;
    # https://man.archlinux.org/man/foot.ini.5
    settings = {
      main = {
        term = "xterm-256color";
        font = "monospace:size=14";
        dpi-aware = "no";
      };

      mouse = {
        hide-when-typing = "yes";
      };

      # https://github.com/catppuccin/foot/blob/main/themes/catppuccin-mocha.ini
      cursor = {
        color = "11111b f5e0dc";
      };
    };
  };
}
