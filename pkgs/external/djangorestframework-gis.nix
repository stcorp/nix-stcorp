{ buildPythonPackage
, djangorestframework
}:

buildPythonPackage {
  pname = "djangorestframework-gis";
  version = "1.0";

  src = builtins.fetchurl {
    url = https://files.pythonhosted.org/packages/54/69/d099e8f8aa65d5158e9e0e34c7e0aefadfd98e62754d74dac55ecddba28a/djangorestframework-gis-1.0.tar.gz;
    sha256 = "921c5adbc9a7c0502c905957a6695b67f55d7bf6582e1ab837888b55a1fce5a6";
  };

  doCheck = false;

  propagatedBuildInputs = [
    djangorestframework
  ];
}
