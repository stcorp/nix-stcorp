{ buildPythonPackage, fetchPypi, django-cms, django }:

buildPythonPackage rec {
  pname = "djangocms-column";
  version = "2.0.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1ded8ae99053cf0a174e862e9c8c72d5b9c5dec78ed4a860a0630c616c2e48b7";
  };

  # fix for https://github.com/django-cms/djangocms-column/issues/57
  patches = [ ./djangocms-column.patch ];

  doCheck = false;

  propagatedBuildInputs = [ django-cms django ];
}
