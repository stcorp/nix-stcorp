{
  buildPythonPackage,
  libxml2,
  lxml,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.2.2";
  pyproject = true;

  src = fetchurl {
    url = "https://github.com/stcorp/pvml/archive/refs/tags/4.2.2.tar.gz";
    sha256 = "87aaca057eeca894c6f6197a317b1cbb5f0702bdefc54fd20d53967a034fa5d2";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    libxml2
    lxml
  ];
}
