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
    sha256 = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855";
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
