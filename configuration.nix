{ config, pkgs, ... }: with pkgs;

{
  
  environment.systemPackages =
    [
      emacs
      git
      nix-repl
      stdenv
      tmux
    ];
 
  require = [
    /vagrant/hdevenv.nix
    /vagrant/emacs.nix
  ];

  networking.firewall.allowedTCPPorts = [3000];
 }