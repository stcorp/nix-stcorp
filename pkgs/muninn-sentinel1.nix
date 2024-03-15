{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2024-03-05";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "eb9141d0e4b29ff639d16cf58e8e222ecad78442";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
