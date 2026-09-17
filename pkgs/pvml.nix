{
  buildPythonPackage,
  libxml2,
  lxml,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.2.1";
  pyproject = true;

  src = fetchurl {
    url = "https://github.com/stcorp/pvml/archive/refs/tags/4.2.1.tar.gz";
    sha256 = "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    libxml2
    lxml
  ];
}
