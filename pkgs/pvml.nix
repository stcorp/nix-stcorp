{ buildPythonPackage, libxml2, lxml }:

with builtins;

buildPythonPackage {
  pname = "pvml";
  version = "4.1";

  src = fetchurl {
    url = https://github.com/stcorp/pvml/archive/refs/tags/4.1.tar.gz;
    sha256 = "385c3537b69011fb1c01290858908226118fa4b8ba8cf44407600e55986b9c94";
  };

  propagatedBuildInputs = [ libxml2 lxml ];
}
