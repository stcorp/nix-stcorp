{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-08-01";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "49e3788e39cc52b55a51fe63166f1cb34f91365a";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
