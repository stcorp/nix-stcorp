{ buildPythonPackage, fetchPypi, setuptools }:

buildPythonPackage rec {
  pname = "djangocms-4-migration";
  version = "0.0.2";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "10c20b0b06a5db6f772f71cf059a5bcc76d5b57da0e42b8a3a4d660d0e8883ea";
  };

  build-system = [ setuptools ];
}
