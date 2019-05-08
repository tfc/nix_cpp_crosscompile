{
  nixpkgs ? <nixpkgs>,
  pkgs ? import nixpkgs {}
}:

let
  f = p: sf: p.callPackage (import ./derivation.nix) {
    stdenv = sf p;
  };

  crossPkgs = platformName: import nixpkgs {
    crossSystem = {
      config = platformName;
    };
  };

  raspberryPkgs = crossPkgs pkgs.lib.systems.examples.raspberryPi.config;

in {
  x86_64-linux-gcc = f pkgs (pkgs: pkgs.stdenv);
  x86_64-linux-clang = f pkgs (pkgs: pkgs.clangStdenv);

  raspberry-gcc = f raspberryPkgs (pkgs: pkgs.stdenv);
  raspberry-clang = f raspberryPkgs (pkgs: pkgs.clangStdenv);
}


