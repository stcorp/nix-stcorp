{
  buildPythonPackage,
  fetchPypi,
  django,
  django-polymorphic,
  easy-thumbnails,
  setuptools,
}:

buildPythonPackage rec {
  pname = "django-filer";
  version = "3.4.4";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "django_filer";
    sha256 = "465eec9fe63310a5b718267beebe7c348ee44afd16c6b5056a7bab49ee483412";
  };

  doCheck = false;

  build-system = [ setuptools ];
  # we need to propagate setuptools because django-polymorphic calls it at run-time
  # and doesn't include it as a run-time dependency itself (at the moment)
  propagatedBuildInputs = [
    django
    django-polymorphic
    easy-thumbnails
    setuptools
  ];
}
