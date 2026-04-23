{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2026-04-23";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel5p.git";
    rev = "33ff8079563f5309b1c70d3fb6f99fa3893b8fb1";
    ref = "main";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
