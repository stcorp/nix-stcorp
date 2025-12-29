{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  django-filer,
  djangocms-attributes-field,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-video";
  version = "3.1.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "ecb0d857f5f64c32015b898f829ab16034ea70789e7896009693c086bbd328cd";
  };
  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django-cms
    django-filer
    djangocms-attributes-field
  ];
}
