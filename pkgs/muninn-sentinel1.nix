{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2023-07-21";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "8d9185cbbfaf7de22f143cc558a6c80b55688298";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
