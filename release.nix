{
  nixpkgs ? <nixpkgs>,
  pkgs ? import nixpkgs {}
}:

let
  f = stdenv: import ./derivation.nix { inherit stdenv; };
in {
  x86_64-linux-gcc = f pkgs.stdenv;
  x86_64-linux-clang = f pkgs.clangStdenv;

  raspberry-gcc = f pkgs.pkgsCross.raspberryPi.stdenv;
  raspberry-clang = f pkgs.pkgsCross.raspberryPi.clangStdenv;
}


