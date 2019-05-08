{
  nixpkgs ? /home/tfc/src/nixpkgs,
  pkgs ? import nixpkgs {}
}:

pkgs.callPackage (import ./derivation.nix) {}
