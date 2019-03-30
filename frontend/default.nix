{ mkDerivation, aeson, base, base-unicode-symbols, bytestring
, common, containers, containers-unicode-symbols, cookie
, http-api-data, jsaddle, jsaddle-dom, lens, reflex, reflex-dom
, servant, servant-reflex, stdenv, text, time
}:
mkDerivation {
  pname = "frontend";
  version = "1.0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base base-unicode-symbols bytestring common containers
    containers-unicode-symbols cookie http-api-data jsaddle jsaddle-dom
    lens reflex reflex-dom servant servant-reflex text time
  ];
  executableHaskellDepends = [
    aeson base base-unicode-symbols bytestring common containers
    containers-unicode-symbols cookie http-api-data jsaddle jsaddle-dom
    lens reflex reflex-dom servant servant-reflex text time
  ];
  testHaskellDepends = [
    aeson base base-unicode-symbols bytestring common containers
    containers-unicode-symbols cookie http-api-data jsaddle jsaddle-dom
    lens reflex reflex-dom servant servant-reflex text time
  ];
  homepage = "https://github.com/jappeace/awesome-project-name#readme";
  license = stdenv.lib.licenses.mit;
}
