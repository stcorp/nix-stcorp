{ buildPythonPackage, fetchPypi, beautifulsoup4, docopt, importlib-metadata, jinja2, numpy, requests, setuptools, six, webob }:

buildPythonPackage rec {
  pname = "pydap";
  version = "3.5.3";

  src = fetchPypi  {
    inherit pname version;
    sha256 = "08964ad6f279865814aa134cde36c3d8957de790759b3485cffce41443a9db54";
  };

  doCheck = false;

  # pydap has a runtime dependency on pkg_resources (setuptools)
  propagatedBuildInputs = [ beautifulsoup4 docopt importlib-metadata jinja2 numpy requests setuptools six webob ];
}
