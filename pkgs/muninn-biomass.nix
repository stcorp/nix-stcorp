{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-07-31";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "9d8fd87eba1d06e996f1498c26ca73f519a7deb5";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
