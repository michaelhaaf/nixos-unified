{
  programs.kitty = {
    enable = true;
    settings = builtins.readFile ./kitty.conf;
    themeFile = "Catppuccin-Mocha"
      };
  }
