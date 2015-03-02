{ config, pkgs, ... }: with pkgs;

{
  
  environment.systemPackages =
    [
      git
      stdenv
      tmux
      neo4j
      nix-repl
    ];
 
  require = [
    /vagrant/hdevenv.nix
  ];
  
 }