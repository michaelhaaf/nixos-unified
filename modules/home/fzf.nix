{
  programs.fzf = {
    enable = true;
    defaultOptions = [
      "--height 60%"
      "--border sharp"
      "--layout reverse"
      "--prompt '∷ '"
      "--pointer ▶ "
      "--marker ⇒"
      "--preview 'bat -n --color=always {}'"
    ]
      };
  }
