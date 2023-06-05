{ buildPythonPackage, fetchurl, django-cms, django-filer, djangocms-attributes-field }:

buildPythonPackage {
  pname = "djangocms-link";
  version = "3.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/26/b1/ef75ec1723a9b941ac605b65818be59c08eb64291ba20edba5bae3dd8b5c/djangocms-link-3.0.0.tar.gz;
    sha256 = "0rva1bi190cf2ldaziy8d11d2192da760g227v6bwnpqjz9valra";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field ];
}
