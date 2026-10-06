{
  buildPythonPackage,
  muninn,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-mtg";
  version = "2025-10-06";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-mtg.git";
    rev = "70da8b8eb3f08664e1c887e912042b56bb2f39f2";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    muninn
  ];
}
