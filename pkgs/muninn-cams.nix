{
  buildPythonPackage,
  muninn,
  muninn-ecmwfmars,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "2.2.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-cams/archive/2.2.1.tar.gz";
    sha256 = "ce92301ddff7ca799eb9ace4a3c2ed9bee84025971325253896378665076bf8a";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    muninn
    muninn-ecmwfmars
  ];
}
