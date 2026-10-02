{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-mtg";
  version = "2025-10-02";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-mtg.git";
    rev = "b0186870ef0640a8f1d3fe50853846571e84bbf6";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    muninn
  ];
}
