{ pkgs, ... }: with pkgs;
let
  inherit (haskellPackages_ghc783_profiling) cabal2nix yesodBin ghcMod;
in
{
  environment.systemPackages = [
    cabal2nix
    ghc.ghc783
    ghcMod
    yesodBin
  ];
}