{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2023-12-12";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "95c0b69e76e5b24a4c510f36484d05df19344b8a";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
