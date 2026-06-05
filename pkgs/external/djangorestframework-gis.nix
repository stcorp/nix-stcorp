{
  buildPythonPackage,
  fetchPypi,
  djangorestframework,
  django-filter,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangorestframework-gis";
  version = "1.2.1";

  src = fetchPypi {
    pname = "djangorestframework_gis";
    inherit version;
    sha256 = "649ad0cb361dd85f2113b1796248eb2b198a01fa3d64c5e486106224c0ad51fd";
  };

  pyproject = true;

  build-system = [ setuptools ];

  doCheck = false;

  propagatedBuildInputs = [
    djangorestframework
    django-filter
  ];
}
