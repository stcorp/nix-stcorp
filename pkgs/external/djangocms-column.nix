{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  django,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-column";
  version = "2.1.0";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "djangocms_column";
    sha256 = "b73867f7ba487e759cc62da1b3d4dafc6fed5244ddf1b04485eda22bb50ac68a";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django-cms
    django
  ];
}
