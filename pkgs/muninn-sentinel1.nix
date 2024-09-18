{ buildPythonPackage, coda, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-09-18";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "777fd51002dc4bfe6360f267e6aefd47be821167";
    ref = "main";
  };

  propagatedBuildInputs = [ coda muninn ];
}
