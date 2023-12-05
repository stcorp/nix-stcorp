{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-12-05";

  src = fetchGit {
    url = "https://github.nl/stcorp/biocheck.git";
    rev = "de82c36547f4af8bff6341d7bf1a85b96111daf0";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
