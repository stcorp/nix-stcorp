{
  buildPythonPackage,
  coda,
  muninn,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2025-09-10";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "f4ff49a9abd9aa2bb1f3d951a542e9b36fc2ca7a";
    ref = "main";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
