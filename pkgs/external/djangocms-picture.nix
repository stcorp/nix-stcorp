{ buildPythonPackage, fetchPypi, django-cms, django-filer, djangocms-attributes-field, easy-thumbnails }:

buildPythonPackage rec {
  pname = "djangocms-picture";
  version = "4.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "29ffadc514bfa306ec1f2ebb145391b9b860c12ba001e2475dffb5fe1be5cac2";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field easy-thumbnails ];
}
