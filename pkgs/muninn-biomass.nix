{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-01-12";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "e944865af932f57544d19e0b48dd51ceba1d435d";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
