{ buildPythonPackage, fetchPypi, pystac, python-dateutil, requests, setuptools }:

with builtins;

buildPythonPackage rec {
  pname = "pystac-client";
  version = "0.8.5";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "7fba8d4f3c641ff7e840084fc3a53c96443a227f8a5889ae500fc38183ccd994";
  };

  doCheck = false;

  nativeBuildInputs = [ setuptools ];
  propagatedBuildInputs = [ pystac python-dateutil requests ];
}
