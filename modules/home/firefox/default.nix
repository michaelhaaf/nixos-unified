{
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        userChrome = builtins.readFile ./userChrome.css;
      };
    };
    policies = builtins.readFile ./policies.json
  };
}
