{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-biomass";
  version = "2024-06-10";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-biomass.git";
    rev = "51210e2536ce366050f278f367e80be40c1f9cb8";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
