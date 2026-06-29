{
  buildPythonPackage,
  fetchPypi,
  django,
  django-stubs-ext,
  hatchling,
  setuptools,
}:

buildPythonPackage rec {
  pname = "django-fsm-2";
  version = "4.2.4";
  pyproject = true;

  src = fetchPypi {
    pname = "django_fsm_2";
    inherit version;
    sha256 = "0e395afd03ff504afd476e8568ca213aafc3324bd4e5427e5b3287f7b1e7d979";
  };

  doCheck = false;

  build-system = [
    hatchling
    setuptools
  ];
  propagatedBuildInputs = [
    django
    django-stubs-ext
  ];
}
