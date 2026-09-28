{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2026-09-28";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel5p.git";
    rev = "fcd7f572127687192a11d9f538cc324ccfc3b9f5";
    ref = "main";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
