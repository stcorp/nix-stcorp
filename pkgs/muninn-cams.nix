{
  buildPythonPackage,
  muninn,
  muninn-ecmwfmars,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "2.2";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-cams/archive/2.2.tar.gz";
    sha256 = "32e4b1e9523b9df9952d7d3e09032a29fd0b382070a370f92d4f6adc240009e5";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    muninn
    muninn-ecmwfmars
  ];
}
