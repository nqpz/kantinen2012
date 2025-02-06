# Use this file with nix-build or similar tools; see https://nixos.org/
with import <nixpkgs> {};
with (import ./scripts.nix pkgs);

stdenv.mkDerivation {
  pname = "kantinen2012";
  version = "v0.1";

  src = ./.;

  buildInputs = [
    inform7-create-scaffolding
    inform7-compile
    util-linux
  ];

  buildPhase = ''
    make clean release.ulx
  '';

  installPhase = ''
    mkdir $out
    cp release.ulx $out/kantinen2012.ulx
  '';
}
