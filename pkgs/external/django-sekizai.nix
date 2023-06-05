{ buildPythonPackage, fetchurl, django, django_classytags }:

buildPythonPackage {
  pname = "django-sekizai";
  version = "3.0.1";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/ad/ba/22136453b0d7028f2d79c473b3fbc2e6d95680eb12e0b0eebc537019075e/django-sekizai-3.0.1.tar.gz;
    sha256 = "c7d69af7601ae42b15abb6fdaf3ec0ca309305afa0638544a6119ebdaa7bcf81";
  };

  doCheck = false;

  propagatedBuildInputs = [ django django_classytags ];
}
