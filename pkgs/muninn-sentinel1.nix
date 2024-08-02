{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-08-02";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "c6c40f83573abb85b174a1b4a05ee0fd82192299";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
