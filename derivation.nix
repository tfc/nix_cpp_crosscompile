{ stdenv }:

stdenv.mkDerivation {
  name = "cross-compile-example";

  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    cp t0 t1 t2 $out/bin/
  '';
}
