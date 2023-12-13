{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "safecheck";
  version = "2023-08-09";

  src = fetchGit {
    url = "https://github.com/stcorp/safecheck.git";
    rev = "98c40f2e2eaf37ec027e43169a71a50d00f4a01b";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
