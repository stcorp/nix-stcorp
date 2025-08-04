{
  buildPythonPackage,
  coda,
  muninn,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-eps-sg";
  version = "2025-08-04";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-eps-sg.git";
    rev = "0d1236ae7a5a567156cfc4018e73c6250fd9c08b";
    ref = "main";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
