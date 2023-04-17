{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2023-03-10";

  src = fetchGit {
    url = "https://github.nl/stcorp/muninn-sentinel1.git";
    rev = "4796bef3cfa98dc6526b9a781231270a237aafef";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
