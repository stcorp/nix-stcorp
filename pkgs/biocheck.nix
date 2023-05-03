{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-05-03";

  src = fetchGit {
    url = "https://github.nl/stcorp/biocheck.git";
    rev = "b955fa16e87db974e93c410102590cfff31b0992";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
