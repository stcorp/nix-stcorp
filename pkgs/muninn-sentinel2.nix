{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-09-19";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "98026c5bfafb9969969f5eb4ab2ca332272b9fcf";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
