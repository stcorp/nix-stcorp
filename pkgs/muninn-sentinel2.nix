{ buildPythonPackage, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel2";
  version = "2024-11-19";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel2.git";
    rev = "1d149ae97e683b9496b4ec190569e2757cbb8076";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
