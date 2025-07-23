{ buildPythonPackage,  muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-iers";
  version = "2025-07-22";

  src = fetchGit {
    url = "https://github.com/stcorp/muninn-iers.git";
    rev = "ec2e6a757079a1fea6bdb859c964f1723fd4d513";
    ref = "main";
  };

  propagatedBuildInputs = [ muninn ];
}
