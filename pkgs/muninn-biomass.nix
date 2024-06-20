{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-06-20";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "f5b3c5a5e43f7c3125c1c6d3b63b1cd128d1d04c";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
