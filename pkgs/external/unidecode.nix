{ lib, buildPythonPackage, fetchPypi, glibcLocales }:

# modification of derivation from nixpkgs since we need a version <1.2.0 for django-filer

buildPythonPackage {
  pname = "Unidecode";
  version = "1.1.2";

  src = fetchPypi {
    pname = "Unidecode";
    version = "1.1.2";
    sha256 = "a039f89014245e0cad8858976293e23501accc9ff5a7bdbc739a14a2b7b85cdc";
  };

  LC_ALL="en_US.UTF-8";

  buildInputs = [ glibcLocales ];
}
