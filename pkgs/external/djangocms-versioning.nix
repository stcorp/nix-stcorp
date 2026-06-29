{
  buildPythonPackage,
  fetchPypi,
  django,
  django-cms,
  django-fsm-2,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-versioning";
  version = "2.5.1";
  pyproject = true;

  src = fetchPypi {
    pname = "djangocms_versioning";
    inherit version;
    sha256 = "8e4d69e583918a8bb6264049a865c68abd2adc8cd14aa150b8ab1ad4d852a226";
  };

  doCheck = false;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    django
    django-cms
    django-fsm-2
  ];
}
