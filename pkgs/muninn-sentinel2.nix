{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2025-10-21";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "e1c7e2945e1b3fda31b3b8a9f00162820bdab42e";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
