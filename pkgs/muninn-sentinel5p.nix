{
  buildPythonPackage,
  coda,
  muninn,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2025-09-25";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-sentinel5p.git";
    rev = "f9e343b7634817d07cd782b0485f079ddb7a765b";
    ref = "main";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
