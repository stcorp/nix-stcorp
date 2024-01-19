{ buildPythonPackage, fetchPypi, beautifulsoup4, docopt, jinja2, numpy, requests, setuptools, six, webob }:

buildPythonPackage rec {
  pname = "pydap";
  version = "3.4.1";

  src = fetchPypi  {
    inherit pname version;
    sha256 = "17c46087b53c6aec9bc5495a5d52aca19b2aa4b045f370b9f4b3a6058f5d8df7";
  };

  doCheck = false;

  # pydap has a runtime dependency on pkg_resources (setuptools)
  propagatedBuildInputs = [ beautifulsoup4 docopt jinja2 numpy requests setuptools six webob ];
}
