{
  buildPythonPackage,
  fetchPypi,
  python-dateutil,
  setuptools,
}:

with builtins;

buildPythonPackage rec {
  pname = "pystac";
  version = "1.11.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "acb1e04be398a0cda2d8870ab5e90457783a8014a206590233171d8b2ae0d9e7";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [ python-dateutil ];
}
