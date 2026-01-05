{
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:
buildPythonPackage {
  pname = "findlibs";
  version = "0.1.2";
  pyproject = true;
  build-system = [ setuptools ];
  propagatedBuildInputs = [
    setuptools
  ];
  src = fetchFromGitHub {
    owner = "ecmwf";
    repo = "findlibs";
    rev = "0.1.2";
    sha256 = "sha256-4+25cTuPiNaaph8sSQFhPKpTkdZYafa9CTXhZo60nfU=";
  };
}
