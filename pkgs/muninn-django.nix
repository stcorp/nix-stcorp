{ buildPythonPackage, django, djangorestframework, djangorestframework-gis, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-django";
  version = "2025-07-16";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-django.git";
    rev = "38f63798a8f999b3b4b1cf68223fb5eb69fcea42";
    ref = "master";
  };

  doCheck = false;

  propagatedBuildInputs = [ django djangorestframework djangorestframework-gis muninn ];
}
