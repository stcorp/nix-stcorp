{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-08-02";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "5e5189895bb7f24eae494fff958dc2cb3121a31d";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
