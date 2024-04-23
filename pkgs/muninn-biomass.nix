{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-04-23";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "0f43f5914e6e6a062d584357929dc3003858d1d2";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
