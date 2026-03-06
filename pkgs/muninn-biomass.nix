{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2026-03-05";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "46cfeea60d87c389d8e45429f3743a6b102d44fa";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ muninn ];
}
