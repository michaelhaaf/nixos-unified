{ pkgs, ... }:
{
  # Nix packages to install to $HOME
  #
  # Search for packages here: https://search.nixos.org/packages
  home.packages = with pkgs; [
    # Unix tools
    (pass.withExtensions (ext: [ ext.pass-otp ]))
    act
    age
    bc
    borgbackup
    bzip2
    cachix
    chezmoi
    codeberg-cli
    curl
    delta
    diffutils
    eza
    file
    findutils
    fd
    gawk
    gh
    ghostscript
    gnumake
    gnugrep
    gnupg
    gnused
    gnutar
    gzip
    hub
    htop
    imagemagick
    ipcalc
    less
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
    pandoc
    pdftk
    p7zip
    ripgrep
    rclone
    rsync
    sd
    shellcheck
    stow
    tessen
    tmux
    tree
    ugrep
    unar
    unzip
    watch
    wkhtmltopdf
    xz
    yq
    zathura
    zoxide
    zstd
  ];

  # Programs natively supported by home-manager.
  # They can be configured in `programs.*` instead of using home.packages.
  programs = {
    bat.enable = true;
    jq.enable = true;
    btop.enable = true;
    tmate = {
      enable = true;
      #host = ""; #In case you wish to use a server other than tmate.io
    };
  };
}
