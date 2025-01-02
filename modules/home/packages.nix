{ pkgs, ... }:
{
  # Nix packages to install to $HOME
  #
  # Search for packages here: https://search.nixos.org/packages
  home.packages = with pkgs; [
    # Unix tools
    (pass.withExtensions (ext: [ ext.pass-otp ]))
    age
    borgbackup
    bzip2
    chezmoi
    curl
    delta
    diffutils
    eza
    file
    findutils
    fd
    gawk
    gh
    gnumake
    gnugrep
    gnupg
    gnused
    gnutar
    gzip
    htop
    imagemagick
    ipcalc
    lsof
    man
    netcat-gnu
    nmap
    nix-output-monitor
    nix-tree
    nix-info
    nixpkgs-fmt
    nvd
    openssh
    openssl
    p7zip
    python3
    ripgrep
    rclone
    rsync
    scripts
    sd
    shellcheck
    tmux
    tree
    ugrep
    unar
    unzip
    watch
    xz
    yq
    zstd

    # Nix dev
    cachix

    # On ubuntu, we need this less for `man home-configuration.nix`'s pager to
    # work.
    less
  ];

  # Programs natively supported by home-manager.
  # They can be configured in `programs.*` instead of using home.packages.
  programs = {
    # Better `cat`
    bat.enable = true;
    # Type `<ctrl> + r` to fuzzy search your shell history
    fzf.enable = true;
    jq.enable = true;
    # Install btop https://github.com/aristocratos/btop
    btop.enable = true;
    # Tmate terminal sharing.
    tmate = {
      enable = true;
      #host = ""; #In case you wish to use a server other than tmate.io 
    };
  };
}
