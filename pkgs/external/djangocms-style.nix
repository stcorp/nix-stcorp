{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  djangocms-attributes-field,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-style";
  version = "3.1.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "2f28dfc299615b51b57cdc92ccdd3db1aba706d42d7038335b25f893fabfa1c5";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django-cms
    djangocms-attributes-field
  ];
}
