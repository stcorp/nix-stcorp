{ buildPythonPackage, libxml2, lxml }:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.1.2";

  src = fetchurl {
    url = https://github.com/stcorp/pvml/archive/refs/tags/4.1.2.tar.gz;
    sha256 = "362e4d3d35bb9a3fea72b9d0b2802335d169bc9b390fae684a1c2cc26c672240";
  };

  propagatedBuildInputs = [ libxml2 lxml ];
}
