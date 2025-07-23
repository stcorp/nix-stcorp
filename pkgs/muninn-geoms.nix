{
  buildPythonPackage,
  coda,
  muninn,
}:

buildPythonPackage {
  pname = "muninn-geoms";
  version = "1.0";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-geoms/archive/1.0.tar.gz";
    sha256 = "12ds4qkdr9k4y9jn8fhb5mgmn0b2673qcz2d5qdgz2c22d6vxh91";
  };

  propagatedBuildInputs = [
    coda
    muninn
  ];
}
