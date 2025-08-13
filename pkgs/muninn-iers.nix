{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-iers";
  version = "2025-08-13";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-iers.git";
    rev = "62d0ce90eb2de6eb85db1e0ef11214731f020123";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
