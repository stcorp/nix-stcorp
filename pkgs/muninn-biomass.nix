{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-06-21";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "fdf5f6a5e14acc4672fe543ef24ba2723d2f3f06";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
