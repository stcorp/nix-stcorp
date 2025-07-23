{ buildPythonPackage,  muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-iers";
  version = "2025-07-23";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-iers.git";
    rev = "08f9eb15d6e351ffb32cbd28fd644fee20fdeb0b";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
