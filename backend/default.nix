{ pkgs ? (import ../reflex-platform/nixpkgs {}) }:
(pkgs.stdenv.mkDerivation {
  name = "Minimal-example-of";
  buildTools = [ pkgs.haskellPackages.hpack ];
  preConfigure = ''hpack'';
  isLibrary = true;
  isExecutable = true;
  buildInputs = [ pkgs.postgresql pkgs.zlib pkgs.haskellPackages.hpack pkgs.haskellPackages.cabal2nix ];
  src = ./.;
})
