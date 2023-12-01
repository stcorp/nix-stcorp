{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-12-01";

  src = fetchGit {
    url = "https://github.nl/stcorp/biocheck.git";
    rev = "a58d71c1b1834f17a2e65881ff749c6bc6566bee";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
