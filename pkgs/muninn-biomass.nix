{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-06-23";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "fba536e6eaa36ad10c2d0a3bbad86263d9463d19";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
