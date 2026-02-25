{
  buildPythonPackage,
  fetchFromGitHub,
  attrs,
  cffi,
  eccodes,
  findlibs,
  numpy,
  setuptools,
}:
buildPythonPackage {
  pname = "python-eccodes";
  version = "2.44.0";
  pyproject = true;
  build-system = [ setuptools ];
  propagatedBuildInputs = [
    attrs
    cffi
    eccodes
    findlibs
    numpy
  ];
  src = fetchFromGitHub {
    owner = "ecmwf";
    repo = "eccodes-python";
    rev = "2.44.0";
    sha256 = "sha256-hDJWR1D5ZgVaq2Du12Z9T43Svz8Ze2yZms18hGJfS8k=";
  };
}
