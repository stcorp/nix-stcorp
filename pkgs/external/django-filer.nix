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
  version = "3.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "c58628155ace4bb9f10f6ea9cdf92049b5961bd2ef82c5a3b76f09091f8af50d";
  };

  doCheck = false;

  # we need to propagate setuptools because django-polymorphic calls it at run-time
  # and doesn't include it as a run-time dependency itself (at the moment)
  propagatedBuildInputs = [
    django
    django-polymorphic
    easy-thumbnails
    setuptools
  ];
}
