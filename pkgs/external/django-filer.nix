{ buildPythonPackage, fetchurl, django, django-mptt, django_polymorphic, easy-thumbnails, unidecode }:

buildPythonPackage {
  pname = "django-filer";
  version = "2.2.1";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/7d/b9/52a968c6886f6bb6f71e7bbecdee29685f52680ac6b793397af4a5a75e66/django-filer-2.2.1.tar.gz;
    sha256 = "588101c0d84c389451893c22a927a4a8de655e49e69a4b3b42e4f3aa56ea2ec7";
  };

  doCheck = false;

  propagatedBuildInputs = [ django django-mptt django_polymorphic easy-thumbnails unidecode ];
}
