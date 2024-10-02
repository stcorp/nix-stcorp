{ buildPythonPackage, coda, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-10-02";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "64782d8039126dfbe43886105b7c2d943bf93377";
    ref = "main";
  };

  propagatedBuildInputs = [ coda muninn ];
}
