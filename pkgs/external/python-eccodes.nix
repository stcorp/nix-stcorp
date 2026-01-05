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
  version = "2.43.0";
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
    rev = "2.43.0";
    sha256 = "sha256-UN/hz3CWUGJW/z3nmm/tqmJFKCSX125Tv6rpsO+nDUs=";
  };
}
