{ pkgs, ... }: with pkgs;
let
  inherit (haskellPackages_ghc783_profiling) cabal2nix cabalInstall yesodBin ghcMod;
in
{
  environment.systemPackages = [
    cabal2nix
    ghc.ghc783
    cabalInstall
    ghcMod
    yesodBin
  ];
}