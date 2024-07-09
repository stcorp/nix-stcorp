{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-07-09";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "a4919cf274b714e74eca2599a894774c1858878f";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
