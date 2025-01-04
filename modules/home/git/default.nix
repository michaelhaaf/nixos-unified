{ ... }:
{
  home.shellAliases = {
    g = "git";
    lg = "lazygit";
  };

  programs = {
    git = {
      enable = true;
      userName = "Michael Haaf";
      userEmail = "michael.haaf@gmail.com";
      ignores = [ "*~" "*.swp" ];
      aliases = {
        ci = "commit";
        co = "checkout";
        adog = "log --all --decorate --oneline --graph";
        staash = "stash --all";
        blaame = "blame -w -C -C -C";
      };
      delta = {
        enable = true;
        options = {
          navigate = true;
          dark = true;
          side-by-side = true;
        };
      };
      signing = {
        signByDefault = true;
      };
      extraConfig = {
        init.defaultBranch = "main";
        commit.template = builtins.readFile ./commit-template.txt;
        push.autoSetupRemote = true;
        rerere.enabled = true;
        core.editor = "nvim";
      };
    };
    lazygit.enable = true;
  };

}
