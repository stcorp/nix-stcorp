{
  buildPythonPackage,
  pyyaml,
  schedule,
  setuptools,
  watchdog,
}:

with builtins;

buildPythonPackage {
  pname = "legato";
  version = "1.3.2";

  src = fetchurl {
    url = "https://github.com/stcorp/legato/archive/1.3.2.tar.gz";
    sha256 = "793d92ee8c9b30ada67fffb1802b8cccbbc96f55ded05496c06c6a236a314b4c";
  };
  
  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    pyyaml
    schedule
    watchdog
  ];
}
