{ config, pkgs, ... }: with pkgs;

{
  
  environment.systemPackages =
    [
      emacs
      git
      stdenv
      tmux
      nix-repl
    ];
 
  require = [
    /vagrant/hdevenv.nix
  ];
  
 }