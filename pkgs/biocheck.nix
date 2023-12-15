{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-12-15";

  src = fetchGit {
    url = "https://github.com/stcorp/biocheck.git";
    rev = "583dbe42caef8d86a6daa9cdd22171393b8a63f9";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
