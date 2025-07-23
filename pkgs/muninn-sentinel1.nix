{
  buildPythonPackage,
  coda,
  muninn,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2025-04-25";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "57e61aa6b689549ccc0b5728c5ab8a77049dac3d";
    ref = "main";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
