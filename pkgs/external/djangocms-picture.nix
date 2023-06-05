{ buildPythonPackage, fetchurl, django-cms, django-filer, djangocms-attributes-field, easy-thumbnails }:

buildPythonPackage {
  pname = "djangocms-picture";
  version = "4.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/7c/3a/c21c424bbcf2297c7c07b22c63657aecfa2cf4f6ab8db13ece4dd5b9f558/djangocms-picture-4.0.0.tar.gz;
    sha256 = "dfa691a5c759d84a9e1a14e1b67fd2562761347e9979c2092ec73e70d9220b82";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field easy-thumbnails ];
}
