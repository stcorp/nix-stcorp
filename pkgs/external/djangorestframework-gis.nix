{ buildPythonPackage, fetchPypi, djangorestframework }:

buildPythonPackage rec {
  pname = "djangorestframework-gis";
  version = "1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "84b915503a59263ed9473ecde34b19260c3e9c5c8ebb3aea8d91a67fd39f7215";
  };

  doCheck = false;

  propagatedBuildInputs = [
    djangorestframework
  ];
}
