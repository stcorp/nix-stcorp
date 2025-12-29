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
  version = "3.0.1";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "b4952eb57385fadb31f67ed61e34eec3fe5886669163f959d1b56a9ac0fb5b42";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django-cms
    django-filer
    djangocms-attributes-field
  ];
}
