{ buildPythonPackage, pyyaml, schedule, watchdog }:

with builtins;

buildPythonPackage {
  pname = "legato";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/stcorp/legato/archive/1.3.1.tar.gz";
    sha256 = "1219d842bcaea37d86aaaccf2ae461840bf2a373c709bda561a093d7ea2a91ba";
  };

  propagatedBuildInputs = [ pyyaml schedule watchdog ];
}
