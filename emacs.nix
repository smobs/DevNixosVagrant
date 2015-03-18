{ pkgs, ... }: with pkgs.emacs24Packages;
{
    environment.systemPackages = [
        haskellMode
    ];
}