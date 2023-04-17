{ buildPythonPackage, pyyaml, schedule, watchdog }:

with builtins;

buildPythonPackage {
  pname = "legato";
  version = "1.3";

  src = fetchurl {
    url = "https://github.com/stcorp/legato/archive/1.3.tar.gz";
    sha256 = "1kshsjljml343l5swa134hnyv4yxbawj4xk5jgs4ylmy8cyz3dn5";
  };

  propagatedBuildInputs = [ pyyaml schedule watchdog ];
}
