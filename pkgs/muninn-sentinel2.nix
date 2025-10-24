{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2025-10-24";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "d86326d86ac4cdeb89059db6308b0015078c9250";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
