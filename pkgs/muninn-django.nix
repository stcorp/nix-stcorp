{ buildPythonPackage, django, djangorestframework, djangorestframework-gis, muninn }:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.1";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.1.tar.gz";
    sha256 = "1974wd2gviwfmrqmkc9378lsxcqibvg0m95jbr7inw8i26shzjmj";
  };

  doCheck = false;

  propagatedBuildInputs = [ django djangorestframework djangorestframework-gis muninn ];
}
