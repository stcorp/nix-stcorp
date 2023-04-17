{ buildPythonPackage, coda, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-ecmwfmars";
  version = "1.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-ecmwfmars/archive/1.1.tar.gz";
    sha256 = "0q909x456ihrnzlnv19bxv4fkjgr4syxsj6g06znks698hb78kg5";
  };

  propagatedBuildInputs = [ coda muninn ];
}
