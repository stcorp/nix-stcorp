{
  buildPythonPackage,
  muninn,
  setuptools
}:

with builtins;

buildPythonPackage {
  pname = "muninn-iers";
  version = "2025-10-20";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-iers.git";
    rev = "1069672b9fecaf3f590ffa10e318ad057e06ca74";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ muninn ];
}
