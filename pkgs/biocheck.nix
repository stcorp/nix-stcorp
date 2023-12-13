{ buildPythonPackage, lxml }:

with builtins;

buildPythonPackage {
  pname = "biocheck";
  version = "2023-12-13";

  src = fetchGit {
    url = "https://github.com/stcorp/biocheck.git";
    rev = "051342fbd9231de2fde0f69b3f32df77d41b0fe8";
    ref = "main";
  };

  propagatedBuildInputs = [ lxml ];
}
