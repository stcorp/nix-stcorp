{
  buildPythonPackage,
  muninn,
  muninn-ecmwfmars,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "2.3";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-cams/archive/2.3.tar.gz";
    sha256 = "4c918016fe4c68d36819f2b95adfed1fe8d4337779b9df66562e890b285ead1d";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    muninn
    muninn-ecmwfmars
  ];
}
