{ buildPythonPackage, fetchPypi, django, django_classytags }:

buildPythonPackage rec {
  pname = "django-sekizai";
  version = "4.1.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "2aca36cbae0b5c0cefed9565416ec442335767fb3145bff11e58622fc653cdad";
  };

  doCheck = false;

  propagatedBuildInputs = [ django django_classytags ];
}
