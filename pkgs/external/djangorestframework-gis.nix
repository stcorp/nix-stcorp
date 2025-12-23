{
  buildPythonPackage,
  fetchPypi,
  djangorestframework,
  django-filter,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangorestframework-gis";
  version = "1.2.0";

  src = fetchPypi {
    pname = "djangorestframework_gis";
    inherit version;
    sha256 = "sha256-cCuprUQXO3zHDkjGyE2kjCj2+CYSzJAad/21TFxXyXE=";
  };

  pyproject = true;

  build-system = [ setuptools ];

  doCheck = false;

  propagatedBuildInputs = [
    djangorestframework
    django-filter
  ];
}
