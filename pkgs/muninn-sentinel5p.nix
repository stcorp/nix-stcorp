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
    rev = "17da6b4f205deb6d2a0fff5225bb8a342866bda7";
    ref = "main";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
