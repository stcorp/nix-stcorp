{ buildPythonPackage, coda, muninn }:

with builtins;

buildPythonPackage {
  pname = "muninn-ecmwfmars";
  version = "1.2";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-ecmwfmars/archive/1.2.tar.gz";
    sha256 = "15bp05hi9qqyyj69scg3lb36fm1q8lwyg0zvi3wskhx1dhcivr7z";
  };

  propagatedBuildInputs = [ coda muninn ];
}
