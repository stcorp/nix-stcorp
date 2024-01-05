{ buildPythonPackage, django, djangorestframework, djangorestframework-gis, muninn }:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.2.1";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.2.1.tar.gz";
    sha256 = "36c76f4274ab6d5b2ffcc3ec87fb5a1a02439c5abd8609d5a7f5dde1416b0375";
  };

  doCheck = false;

  propagatedBuildInputs = [ django djangorestframework djangorestframework-gis muninn ];
}
