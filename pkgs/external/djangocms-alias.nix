{
  buildPythonPackage,
  fetchPypi,
  django,
  django-cms,
  django-parler,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-alias";
  version = "3.1.1";
  pyproject = true;

  src = fetchPypi {
    pname = "djangocms_alias";
    inherit version;
    sha256 = "63e979ae6fe973c525dee437d393462b4ad5cbe9fb790ab9af7db8dfcb25469f";
  };

  doCheck = false;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    django
    django-cms
    django-parler
  ];
}
