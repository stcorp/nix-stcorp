{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-08-02";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "4085d9b7d2cfaabf9c5b047ec080a9effeeaf9f8";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
