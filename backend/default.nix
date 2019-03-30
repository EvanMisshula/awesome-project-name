{ mkDerivation, aeson, base, beam-core, beam-migrate, beam-postgres
, bytestring, common, cookie, optparse-applicative
, postgresql-simple, servant-auth-server, servant-server, stdenv
, text, time, wai, wai-extra, warp
}:
mkDerivation {
  pname = "backend";
  version = "1.0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base beam-core beam-migrate beam-postgres bytestring common
    cookie optparse-applicative postgresql-simple servant-auth-server
    servant-server text time wai wai-extra warp
  ];
  executableHaskellDepends = [
    aeson base beam-core beam-migrate beam-postgres bytestring common
    cookie optparse-applicative postgresql-simple servant-auth-server
    servant-server text time wai wai-extra warp
  ];
  testHaskellDepends = [
    aeson base beam-core beam-migrate beam-postgres bytestring common
    cookie optparse-applicative postgresql-simple servant-auth-server
    servant-server text time wai wai-extra warp
  ];
  homepage = "https://github.com/jappeace/awesome-project-name#readme";
  license = stdenv.lib.licenses.mit;
}
