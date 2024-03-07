{ buildPythonPackage, libxml2, lxml }:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.0";

  src = fetchurl {
    url = https://github.com/stcorp/pvml/archive/refs/tags/4.0.tar.gz;
    sha256 = "748e75c61de31f18e6358c138ad2e35d9b29124a82f6c77b9b463674612e6d00";
  };

  propagatedBuildInputs = [ libxml2 lxml ];
}
