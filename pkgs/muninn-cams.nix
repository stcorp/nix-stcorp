{ buildPythonPackage, muninn, muninn-ecmwfmars }:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "1.3";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/c6/13/02ea8d9bd080b1a30d3ff10d7fdfe859b3e9ea74437292c0555b9ccaf173/muninn-cams-1.3.tar.gz;
    sha256 = "6a02d42a203760ea1af292e0a7d8085ccf9cf6302d7e1458687e4dd7fd72421f";
  };

  propagatedBuildInputs = [ muninn muninn-ecmwfmars ];
}
