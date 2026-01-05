{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-eps-sg";
  version = "2025-12-19";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-eps-sg.git";
    rev = "6c564df845dd6d7f428989639ef0726103cfce2a";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    coda
    muninn
  ];
}
