{ buildPythonPackage, fetchPypi, django-cms }:

buildPythonPackage rec {
  pname = "djangocms-snippet";
  version = "3.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "ecd4f43de121728d8f65b1267b88d66fa5b686f9bb7f79d3b15d7d2c5332c751";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms ];
}
