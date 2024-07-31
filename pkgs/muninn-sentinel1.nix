{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-07-23";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "1b80f0e01c39d159f5ffc67089043c266250a56d";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
