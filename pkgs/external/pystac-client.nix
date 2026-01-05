{
  buildPythonPackage,
  fetchPypi,
  pystac,
  python-dateutil,
  requests,
  setuptools,
}:

with builtins;

buildPythonPackage rec {
  pname = "pystac-client";
  version = "0.8.5";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "pystac_client";
    sha256 = "7fba8d4f3c641ff7e840084fc3a53c96443a227f8a5889ae500fc38183ccd994";
  };

  doCheck = false;

  build-system = [ setuptools ];
  nativeBuildInputs = [ setuptools ];
  propagatedBuildInputs = [
    pystac
    python-dateutil
    requests
  ];
}
