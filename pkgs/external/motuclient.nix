{ buildPythonPackage, fetchPypi, python-dateutil }:

buildPythonPackage rec {
  pname = "motuclient";
  version = "3.0.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "9ef1f34b9866caff760f9b3218b62bd11aaa7b5da5844308a968004752940d8f";
  };

  propagatedBuildInputs = [ python-dateutil ];
}
