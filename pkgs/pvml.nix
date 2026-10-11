{
  buildPythonPackage,
  libxml2,
  lxml,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.2.3";
  pyproject = true;

  src = fetchurl {
    url = "https://github.com/stcorp/pvml/archive/refs/tags/4.2.3.tar.gz";
    sha256 = "88026b74594cf48d823b74a31e285a1e8011899b2ffd31d8a301503dd5865ed1";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    libxml2
    lxml
  ];
}
