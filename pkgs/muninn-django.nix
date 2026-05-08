{
  buildPythonPackage,
  django,
  djangorestframework,
  djangorestframework-gis,
  muninn,
  setuptools,
}:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.3";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.3.tar.gz";
    sha256 = "c7223843f8641059919bcba7b674b6bf1a180ff8903f69cd868eb5d53766c639";
  };

  pyproject = true;

  build-system = [ setuptools ];

  doCheck = false;

  propagatedBuildInputs = [
    django
    djangorestframework
    djangorestframework-gis
    muninn
  ];
}
