{
  programs.foot = {
    enable = true;
    settings = builtins.readFile ./foot.ini;
  };
}
