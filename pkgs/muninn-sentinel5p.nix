{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2026-06-17";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel5p.git";
    rev = "6d9b93385bbd673c243d267a0f9f4ea3372eea80";
    ref = "main";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
