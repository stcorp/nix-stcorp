{ buildPythonPackage, fetchPypi, django-cms, django-filer, djangocms-attributes-field }:

buildPythonPackage rec {
  pname = "djangocms-video";
  version = "3.1.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "ecb0d857f5f64c32015b898f829ab16034ea70789e7896009693c086bbd328cd";
  };
  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field ];
}
