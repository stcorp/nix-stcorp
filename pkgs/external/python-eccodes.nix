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

  # 2.44.0 declares a runtime dependency on 'eccodeslib'
  # (for PyPI binary wheels). Newer versions allow disabling
  # via DEPEND_ON_ECCODESLIB. In nixpkgs we link against
  # the system 'eccodes'. Remove when updating to > 2.44.
  dontCheckRuntimeDeps = true;

  src = fetchFromGitHub {
    owner = "ecmwf";
    repo = "eccodes-python";
    rev = "2.44.0";
    sha256 = "sha256-hDJWR1D5ZgVaq2Du12Z9T43Svz8Ze2yZms18hGJfS8k=";
  };
}
