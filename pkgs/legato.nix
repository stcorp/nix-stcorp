{ buildPythonPackage, pyyaml, schedule, watchdog }:

with builtins;

buildPythonPackage {
  pname = "legato";
  version = "2024-02-14";

  src = fetchGit {
    url = "https://github.com/stcorp/legato.git";
    rev = "380f55b75c65361b24d47bb84c5ad1e61bee6d8d";
    ref = "master";
  };

  propagatedBuildInputs = [ pyyaml schedule watchdog ];
}
