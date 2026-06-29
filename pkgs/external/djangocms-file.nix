{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  django-filer,
  djangocms-attributes-field,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-file";
  version = "4.0.1";
  pyproject = true;

  src = fetchPypi {
    pname = "djangocms_file";
    inherit version;
    sha256 = "c5f7415d367c72e38dd3c31e9de97742b31a9eed91c4b6dd38affe22149689c4";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django-cms
    django-filer
    djangocms-attributes-field
  ];
}
