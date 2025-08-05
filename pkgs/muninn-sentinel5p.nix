{
  buildPythonPackage,
  coda,
  muninn,
}:

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "3.1";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-sentinel5p/archive/3.1.tar.gz";
    sha256 = "ca1ee5b265e3204423a91b8400592c2fa9b3558830dadb6c4864c7484e8ffdf6";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
