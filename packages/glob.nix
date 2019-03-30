{ mkDerivation, base, containers, directory, dlist, filepath, HUnit
, QuickCheck, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2, transformers, transformers-compat
}:
mkDerivation {
  pname = "Glob";
  version = "0.10.0";
  src = ./.;
  libraryHaskellDepends = [
    base containers directory dlist filepath transformers
    transformers-compat
  ];
  testHaskellDepends = [
    base containers directory dlist filepath HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2
    transformers transformers-compat
  ];
  doCheck = false;
  homepage = "http://iki.fi/matti.niemenmaa/glob/";
  description = "Globbing library";
  license = stdenv.lib.licenses.bsd3;
}
