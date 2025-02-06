# Use this file with nix-shell or similar tools; see https://nixos.org/
with import <nixpkgs> {};
with (import ./scripts.nix pkgs);

mkShell {
  buildInputs = [
    inform7-init
    inform7-create-scaffolding
    inform7-compile
    inform7-run
    util-linux
  ];
}
