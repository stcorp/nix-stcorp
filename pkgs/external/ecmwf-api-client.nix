{
  buildPythonPackage,
  fetchPypi,
  setuptools,
}:

buildPythonPackage rec {
  pname = "ecmwf-api-client";
  version = "1.6.5";

  src = fetchPypi {
    inherit version;
    pname = "ecmwf_api_client";
    sha256 = "1fc0eba27163686b7fba5da027cc5dc0a361f75b652508fa7805f50599368b1c";
  };

  pyproject = true;

  build-system = [ setuptools ];
}
