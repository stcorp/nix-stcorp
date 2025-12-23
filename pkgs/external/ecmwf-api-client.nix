{
  buildPythonPackage,
  fetchPypi,
  setuptools,
}:

buildPythonPackage rec {
  pname = "ecmwf-api-client";
  version = "1.6.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1mmhbnmbpcnjbwx1npnvxwrncamla13rlfcpihcxbqkj9aivs01s";
  };

  pyproject = true;

  build-system = [ setuptools ];
}
