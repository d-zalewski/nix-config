{ inputs, pkgs, unstablePkgs, ... }:
let
  inherit (inputs) nixpkgs nixpkgs-unstable;
in
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    ## stable
    act
    ansible
    btop
    coreutils
    diffr # Modern Unix `diff`
    difftastic # Modern Unix `diff`
    du-dust # Modern Unix `du`
    dua # Modern Unix `du`
    duf # Modern Unix `df`
    entr # Modern Unix `watch`
    fastfetch
    fd
    ffmpeg
    fira-code
    fira-code-nerdfont
    fira-mono
    gh
    gnused
    go
    htop
    iperf3    
    jetbrains-mono # font
    jq
    just
    kubectl
    k9s
    lazygit
    lazydocker
    mc
    nerdfonts
    nmap
    ripgrep    
    smartmontools
    television
    terraform
    tree
    unzip
    watch
    wget
    zoxide

    # requires nixpkgs.config.allowUnfree = true;
    vscode-extensions.ms-vscode-remote.remote-ssh
  ];
}
