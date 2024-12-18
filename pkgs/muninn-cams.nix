{ buildPythonPackage, muninn, muninn-ecmwfmars }:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "2.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-cams/archive/2.1.tar.gz";
    sha256 = "b2c638b45f0852056828460567dbd6d14d8767a0598df9755723737f33a481ac";
  };

  propagatedBuildInputs = [ muninn muninn-ecmwfmars ];
}
