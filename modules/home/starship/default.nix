{
  programs.starship = {
    enable = true;
    settings = builtins.readFile ./starship.toml
      };
  }
