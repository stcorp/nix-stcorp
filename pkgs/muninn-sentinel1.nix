{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel1";
  version = "2026-05-13";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel1.git";
    rev = "b34cca8b82be44fb32880d27fd0926b67496def1";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    coda
    muninn
  ];
}
