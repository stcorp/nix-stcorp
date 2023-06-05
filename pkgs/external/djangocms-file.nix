{ buildPythonPackage, fetchurl, django-cms, django-filer, djangocms-attributes-field }:

buildPythonPackage {
  pname = "djangocms-file";
  version = "3.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/38/96/c73fbfd6a9ee8f81712e1ccaeb0df227681cbb79bcb20088c944fbc91faa/djangocms-file-3.0.0.tar.gz;
    sha256 = "1pgzf28rggpzrz6d1pb2cbkfrkpk4iqfi7svlqpj1h1nw4gdzy31";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field ];
}
