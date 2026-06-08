{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  django-filer,
  djangocms-attributes-field,
  setuptools,
  setuptools-scm,
}:

buildPythonPackage rec {
  pname = "djangocms-link";
  version = "5.1.1";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "djangocms_link";
    sha256 = "16c3026e795260e54c6305eb5cf0f1302fe3b1840ff4929d7e8336a455640519";
  };

  doCheck = false;

  build-system = [
    setuptools
    setuptools-scm
  ];
  propagatedBuildInputs = [
    django-cms
    django-filer
    djangocms-attributes-field
  ];
}
