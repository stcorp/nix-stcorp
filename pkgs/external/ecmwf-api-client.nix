{ buildPythonPackage, fetchPypi }:

buildPythonPackage {
  pname = "ecmwf-api-client";
  version = "1.6.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1mmhbnmbpcnjbwx1npnvxwrncamla13rlfcpihcxbqkj9aivs01s";
  };
}
