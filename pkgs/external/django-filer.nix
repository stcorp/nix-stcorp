{ buildPythonPackage, fetchPypi, django, django-mptt, django_polymorphic, easy-thumbnails, unidecode }:

buildPythonPackage rec {
  pname = "django-filer";
  version = "3.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "c58628155ace4bb9f10f6ea9cdf92049b5961bd2ef82c5a3b76f09091f8af50d";
  };

  doCheck = false;

  propagatedBuildInputs = [ django django-mptt django_polymorphic easy-thumbnails unidecode ];
}
