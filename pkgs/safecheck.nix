{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "safecheck";
  version = "2024-04-05";

  src = fetchGit {
    url = "https://github.com/stcorp/safecheck.git";
    rev = "c4dcf0d0af7c5d4a22db6a3a110837665e30d914";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
