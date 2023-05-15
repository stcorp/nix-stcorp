{ buildPythonPackage, django, djangorestframework, djangorestframework-gis, muninn }:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.2";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.2.tar.gz";
    sha256 = "1w4l5fhq5dimmkcw188ybvs6cj60f8nr46hsp29pby3dn6rlzis4";
  };

  doCheck = false;

  propagatedBuildInputs = [ django djangorestframework djangorestframework-gis muninn ];
}
