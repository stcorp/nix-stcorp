{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2025-11-21";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "b1fc5bca1fea1eb8d46407f7509aa90ed0f49bd9";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
