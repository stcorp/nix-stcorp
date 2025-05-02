{ buildPythonPackage, fetchPypi, beautifulsoup4, docopt, importlib-metadata, jinja2, numpy, requests, requests-cache, setuptools, six, webob }:

buildPythonPackage rec {
  pname = "pydap";
  version = "3.5.5";

  src = fetchPypi  {
    inherit pname version;
    sha256 = "0f8ca9b4e244c4d345d0b5269c4ebc886fcd0778b828e5ae1415b7ea5341eabd";
  };

  doCheck = false;

  # pydap has a runtime dependency on pkg_resources (setuptools)
  propagatedBuildInputs = [ beautifulsoup4 docopt importlib-metadata jinja2 numpy requests requests-cache setuptools six webob ];
}
