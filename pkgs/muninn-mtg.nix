{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-mtg";
  version = "2026-01-07";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-mtg.git";
    rev = "3ec5e994109e7073d398fb32f770a93834aef67d";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    muninn
  ];
}
