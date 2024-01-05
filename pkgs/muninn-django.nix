{ buildPythonPackage, django, djangorestframework, djangorestframework-gis, muninn }:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.2.1";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.2.1.tar.gz";
    sha256 = "138d494c5f68ae933af70223d96cf65fe10907909604928e3bd718df07137cb3";
  };

  doCheck = false;

  propagatedBuildInputs = [ django djangorestframework djangorestframework-gis muninn ];
}
