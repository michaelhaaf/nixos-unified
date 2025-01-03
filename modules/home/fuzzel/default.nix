{
  programs.fuzzel = {
    enable = true;
    settings = builtins.readFile ./fuzzel.ini;
  };
}
