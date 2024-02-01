{ buildPythonPackage, pyyaml, schedule, watchdog }:

with builtins;

buildPythonPackage {
  pname = "legato";
  version = "2024-02-01";

  src = fetchGit {
    url = "https://github.com/stcorp/legato.git";
    rev = "9ff3cbfadba13169587cd18c5c655de720dbfe59";
    ref = "master";
  };

  propagatedBuildInputs = [ pyyaml schedule watchdog ];
}
