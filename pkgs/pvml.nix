{ buildPythonPackage, libxml2, lxml }:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.1.1";

  src = fetchurl {
    url = https://github.com/stcorp/pvml/archive/refs/tags/4.1.1.tar.gz;
    sha256 = "f8abf9c4630433c7c429a2374e8dab345719140b05b6981396abf014f90dd031";
  };

  propagatedBuildInputs = [ libxml2 lxml ];
}
