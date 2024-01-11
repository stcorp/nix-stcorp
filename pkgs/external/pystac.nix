{ buildPythonPackage, fetchPypi, python-dateutil }:

with builtins;

buildPythonPackage rec {
  pname = "pystac";
  version = "1.9.0";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "c6b5a86e241fca5e9267a7902c26679f208749a107e9015fe6aaf73a9dd40948";
  };

  doCheck = false;

  propagatedBuildInputs = [ python-dateutil ];
}
