{ buildPythonPackage, fetchurl }:

buildPythonPackage {
  pname = "schedule";
  version = "1.1.0";

  doCheck = false;

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/a8/b5/a291a4c0faa491fd5baefa6d89011ece581cff47b23c0a39b42a63383358/schedule-1.1.0.tar.gz;
    sha256 = "1japp1nx5ffv3ncm8aj670fdhgba3g86siqxf1pdpr1x520m3yzr";
  };
}
