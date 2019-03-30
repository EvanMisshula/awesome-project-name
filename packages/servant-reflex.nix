{ mkDerivation, base, bytestring, case-insensitive, containers
, data-default, exceptions, fetchgit, ghcjs-dom, http-api-data
, http-media, jsaddle, jsaddle-dom, mtl, network-uri, reflex
, reflex-dom-core, safe, servant, servant-auth, stdenv
, string-conversions, text, transformers
}:
mkDerivation {
  pname = "servant-reflex";
  version = "0.3.5";
  src = fetchgit {
    url = "git@github.com:EvanMisshula/servant-reflex.git";
    sha256 = "057wx1pl7vl7nr5f7pck9glld3ijhn9b9caksslkvqfdvyz9wf5k";
    rev = "7ce06478314e1a1f9dbf703c21092cc9e285802d";
    fetchSubmodules = true;
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring case-insensitive containers data-default exceptions
    ghcjs-dom http-api-data http-media jsaddle jsaddle-dom mtl
    network-uri reflex reflex-dom-core safe servant servant-auth
    string-conversions text transformers
  ];
  jailbreak = true;
  doCheck = false;
  description = "servant API generator for reflex apps";
  license = stdenv.lib.licenses.bsd3;
}
