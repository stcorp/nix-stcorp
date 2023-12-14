{ buildPythonPackage, pystac, requests }:

with builtins;

buildPythonPackage {
  pname = "pystac-client";
  version = "0.4.0";

  src = fetchurl {
      url = https://files.pythonhosted.org/packages/56/bf/675ff855032e815df23464f5fe1b38cfd7bdfd765a31400f8853b28975c3/pystac-client-0.4.0.tar.gz;
      sha256 = "8e014f669a88d55c7902a9c1a839048ee87939576060b2d3cc9f6d17cf879056";
  };

  doCheck = false;

  propagatedBuildInputs = [ pystac requests ];
}
