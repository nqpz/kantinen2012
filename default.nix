# Use this file with nix-build or similar tools; see https://nixos.org/
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
  scaffolding = import sources.inform7-scaffolding pkgs;
in

pkgs.stdenv.mkDerivation {
  pname = "kantinen2012";
  version = "v0.1";

  src = ./.;

  buildInputs = scaffolding.buildInputs;

  buildPhase = ''
    make clean release.ulx
  '';

  installPhase = ''
    mkdir $out
    cp release.ulx $out/kantinen2012.ulx
  '';
}
