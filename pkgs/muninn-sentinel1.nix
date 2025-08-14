{
  buildPythonPackage,
  coda,
  muninn,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2025-08-14";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "5ed2956b71835e8b0a68ef466f6c50cf5cb97e2b";
    ref = "main";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
