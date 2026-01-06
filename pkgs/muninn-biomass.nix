{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2026-01-06";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "2a796c1a05672276d0912c7cd58ec67fc98af96f";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ muninn ];
}
