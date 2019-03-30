{ mkDerivation, aeson, base, bytestring, cookie, servant
, servant-auth, stdenv, text
}:
mkDerivation {
  pname = "common";
  version = "1.0.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring cookie servant servant-auth text
  ];
  homepage = "https://github.com/jappeace/awesome-project-name#readme";
  license = stdenv.lib.licenses.mit;
}
