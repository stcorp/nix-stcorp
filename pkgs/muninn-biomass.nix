{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2025-04-19";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "fa5c06895a35582579f49909034698bdfafaaef4";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
