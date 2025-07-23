{
  buildPythonPackage,
  coda,
  muninn,
}:

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "3.0";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-sentinel5p/archive/3.0.tar.gz";
    sha256 = "a2edfd1a07e6bac9c64b8ae0240369d65fc13e988ac0b5fe164614deb3df317a";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
