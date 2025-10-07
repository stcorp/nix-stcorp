{
  buildPythonPackage,
  muninn,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-earthcare";
  version = "2025-10-07";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-earthcare.git";
    rev = "26361c3a9c0e4a9ee8ff32db1fd42a4975da24e5";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
