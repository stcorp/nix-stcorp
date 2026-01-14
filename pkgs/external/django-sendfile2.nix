{
  buildPythonPackage,
  fetchPypi,
  django,
  setuptools,
}:

buildPythonPackage rec {
  pname = "django-sendfile2";
  version = "0.7.2";
  pyproject = true;

  build-system = [ setuptools ];
  src = fetchPypi {
    inherit version;
    pname = "django_sendfile2";
    sha256 = "d0939d52217d314b110d0b7b15ace5063d96aeb4980b7e0f94c020c2e25646f8";
  };

  doCheck = false;

  propagatedBuildInputs = [ django ];
}
