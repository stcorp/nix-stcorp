{
  buildPythonPackage,
  coda,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2025-09-30";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel5p.git";
    rev = "dbfb7bb51e406f4d78335d576fa2dec87b1c3453";
    ref = "main";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
