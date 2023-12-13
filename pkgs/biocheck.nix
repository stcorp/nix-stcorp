{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-12-13";

  src = fetchGit {
    url = "https://github.com/stcorp/biocheck.git";
    rev = "985d6b3069e9ffa74f47b758c2f617cb54437f3e";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
