{
  buildPythonPackage,
  libxml2,
  lxml,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.2.0";
  pyproject = true;

  src = fetchurl {
    url = "https://github.com/stcorp/pvml/archive/refs/tags/4.2.0.tar.gz";
    sha256 = "33c943584a2510d74a53d4a07ab60ab795b4c338c74668acfdc3ff2910f7dcd7";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    libxml2
    lxml
  ];
}
