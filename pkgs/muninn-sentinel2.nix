{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-08-01";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "3995c0ff371100f812fc55d198b7e154352cfb7a";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
