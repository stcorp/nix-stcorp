{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-ecmwfmars";
  version = "1.3";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-ecmwfmars/archive/1.3.tar.gz";
    sha256 = "b073273e39fc2b0ecccaa052fd24141dda1d8ac13ba56415da9968b09989e562";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
