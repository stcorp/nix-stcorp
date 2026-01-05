{
  buildPythonPackage,
  lxml,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "safecheck";
  version = "2025-09-09";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/safecheck.git";
    rev = "7123f27e8920817f4d276f43c639e5ed441b8443";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ lxml ];
}
