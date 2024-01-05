{ buildPythonPackage, fetchPypi, django-cms, django-filer, djangocms-attributes-field }:

buildPythonPackage rec {
  pname = "djangocms-link";
  version = "3.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "e9e989b851ba93ca5e57c497c4e989fe76f16979467c6093f51349b43eba4391";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field ];
}
