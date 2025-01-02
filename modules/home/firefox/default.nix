{ flake, ... }:
{
  imports = [
    flake.inputs.firefox.homeManagerModules.firefox
  ];

  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        userChrome = builtins.readFile ./userChrome.css
      };
    };
  };
}
