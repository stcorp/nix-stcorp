{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-04-07";

  src = fetchGit {
    url = "https://github.nl/stcorp/biocheck.git";
    rev = "e039ce0043b36f3561bddb32b1dc16e2cef52f5b";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
