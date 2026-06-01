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
  version = "1.3.1";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.3.1.tar.gz";
    sha256 = "071a03ec54e6826164825f103f72a584581be523aa21f43b8bee7c681567d3ea";
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
