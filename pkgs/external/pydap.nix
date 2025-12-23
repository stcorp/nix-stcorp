{
  buildPythonPackage,
  fetchPypi,
  beautifulsoup4,
  docopt,
  importlib-metadata,
  jinja2,
  lxml,
  numpy,
  requests,
  requests-cache,
  scipy,
  setuptools,
  setuptools-scm,
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

  pyproject = true;

  build-system = [
    setuptools
    setuptools-scm
  ];

  doCheck = false;

  # pydap has a runtime dependency on pkg_resources (setuptools)
  propagatedBuildInputs = [
    beautifulsoup4
    docopt
    importlib-metadata
    jinja2
    lxml
    numpy
    requests
    requests-cache
    scipy
    setuptools
    six
    webob
  ];
}
