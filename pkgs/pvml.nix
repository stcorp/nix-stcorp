{
  buildPythonPackage,
  libxml2,
  lxml,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.1.2";
  pyproject = true;

  src = fetchurl {
    url = "https://github.com/stcorp/pvml/archive/refs/tags/4.1.2.tar.gz";
    sha256 = "362e4d3d35bb9a3fea72b9d0b2802335d169bc9b390fae684a1c2cc26c672240";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    libxml2
    lxml
  ];
}
