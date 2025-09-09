{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "safecheck";
  version = "2025-09-09";

  src = fetchGit {
    url = "https://github.com/stcorp/safecheck.git";
    rev = "7123f27e8920817f4d276f43c639e5ed441b8443";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
