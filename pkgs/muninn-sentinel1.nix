{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-07-03";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "4a789ede882ab4ee87735cc19595c0a6682d77c5";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
