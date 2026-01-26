{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2026-01-26";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "df5a794ad5ba55702ac721225ec87234115b8fb8";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ muninn ];
}
