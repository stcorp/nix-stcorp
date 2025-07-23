{
  buildPythonPackage,
  fetchPypi,
  beautifulsoup4,
  docopt,
  importlib-metadata,
  jinja2,
  numpy,
  requests,
  requests-cache,
  setuptools,
  six,
  webob,
}:

buildPythonPackage rec {
  pname = "pydap";
  version = "3.5.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1ff6f783b6305a02ccd6e80fd4570b3db2be85435f00ddc827e821f32694df99";
  };

  doCheck = false;

  # pydap has a runtime dependency on pkg_resources (setuptools)
  propagatedBuildInputs = [
    beautifulsoup4
    docopt
    importlib-metadata
    jinja2
    numpy
    requests
    requests-cache
    setuptools
    six
    webob
  ];
}
