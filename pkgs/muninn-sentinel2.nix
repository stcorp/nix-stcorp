{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-07-31";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "dcb320bec951c804edaf7d92383a471a70e5b540";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
