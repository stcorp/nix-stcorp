{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "safecheck";
  version = "2023-03-22";

  src = fetchGit {
    url = "https://github.nl/stcorp/safecheck.git";
    rev = "92516bdb2704df7e762dc0b67f5c6899839c8563";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
