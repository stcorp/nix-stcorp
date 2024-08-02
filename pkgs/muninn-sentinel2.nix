{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-08-02";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "95b054f3f2e6f120fa94a365cd60a4a13e3a8ff5";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
