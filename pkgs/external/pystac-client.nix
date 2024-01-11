{ buildPythonPackage, fetchPypi, pystac, python-dateutil, requests }:

with builtins;

buildPythonPackage rec {
  pname = "pystac-client";
  version = "0.7.5";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "4b0ed0f7177dfc6e394aeb3ecf1236364f315b1d38c107afbcbbef17c2f7db8b";
  };

  doCheck = false;

  propagatedBuildInputs = [ pystac python-dateutil requests ];
}
