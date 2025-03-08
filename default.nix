# Use this file with nix-build or similar tools; see https://nixos.org/
let
  sources = import ./nix/sources.nix;
in
with (import sources.nixpkgs { });
with (import sources.inform7-scaffolding pkgs);

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
