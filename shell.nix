# Use this file with nix-shell or similar tools; see https://nixos.org/
let
  sources = import ./nix/sources.nix;
in
with (import sources.nixpkgs { });
with (import sources.inform7-scaffolding pkgs);

mkShell {
  buildInputs = [
    inform7-init
    inform7-create-scaffolding
    inform7-compile
    inform7-run
    util-linux
  ];
}
