{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2025-04-07";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "9290fb072b1cde08068aced68233ec7908847a1b";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
