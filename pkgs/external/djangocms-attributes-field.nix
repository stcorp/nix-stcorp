{
  buildPythonPackage,
  fetchPypi,
  django-cms,
}:

buildPythonPackage rec {
  pname = "djangocms-attributes-field";
  version = "3.0.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "70cbcb8e826b5a6bceba348119ddc01fa5910af4cb4002eb9895d311950b0d9a";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms ];
}
