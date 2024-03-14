{ buildPythonPackage, muninn, muninn-ecmwfmars }:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "2.0";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-cams/archive/2.0.tar.gz";
    sha256 = "6d2093b3c5fc22e8429de47f95ce6f734e5f60503c4a10bc9972e2ec3280ac00";
  };

  propagatedBuildInputs = [ muninn muninn-ecmwfmars ];
}
