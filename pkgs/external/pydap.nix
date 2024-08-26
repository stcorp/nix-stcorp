{ buildPythonPackage, fetchPypi, beautifulsoup4, docopt, jinja2, numpy, requests, setuptools, six, webob }:

buildPythonPackage rec {
  pname = "pydap";
  version = "3.5";

  src = fetchPypi  {
    inherit pname version;
    sha256 = "0ee6cb7a4892ef22a15c4e2aa58b2656104c542c74faf16c580c56fdf97647ab";
  };

  doCheck = false;

  # pydap has a runtime dependency on pkg_resources (setuptools)
  propagatedBuildInputs = [ beautifulsoup4 docopt jinja2 numpy requests setuptools six webob ];
}
