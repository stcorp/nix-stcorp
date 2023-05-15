{ buildPythonPackage, django, djangorestframework, djangorestframework-gis, muninn }:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.2";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.2.tar.gz";
    sha256 = "024y4jldqgwfnvlx633lr59x1jn3cnnndvr6zbyxh1q4lnhhkv4y";
  };

  doCheck = false;

  propagatedBuildInputs = [ django djangorestframework djangorestframework-gis muninn ];
}
