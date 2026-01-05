{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-earthcare";
  version = "2025-11-26";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-earthcare.git";
    rev = "145533a8f5852a9099d631418503b6b90cac5958";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ muninn ];
}
