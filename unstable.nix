{ config, pkgs, ...}:
let
  baseconfig = { allowUnfree = true; };
  unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz") { config = baseconfig; };
in {
  users.users.pedro.packages = with pkgs; [
    unstable.android-studio
    unstable.spotify
    unstable.vscode
  ];
}
