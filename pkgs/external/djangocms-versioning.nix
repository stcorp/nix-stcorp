{
  buildPythonPackage,
  fetchPypi,
  django,
  django-cms,
  django-fsm,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-versioning";
  version = "2.1.0";
  pyproject = true;

  src = fetchPypi {
    pname = "djangocms_versioning";
    inherit version;
    sha256 = "9fd21d9152864023156aa8d19c68cd2745667276daef2fcfbf1fe7b28e7d8ebb";
  };

  doCheck = false;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    django
    django-cms
    django-fsm
  ];
}
