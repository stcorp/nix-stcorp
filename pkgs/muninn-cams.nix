{ buildPythonPackage, muninn, muninn-ecmwfmars }:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "1.2.1";

  src = fetchurl {
    url = "https://files.pythonhosted.org/packages/7e/f4/65db553895219d6d6e6900fdd462bd89ccb147430c3b2a2385beac3767db/muninn-cams-1.2.1.tar.gz";
    sha256 = "6a3f4ec02b5ae65b5e84db88c584a72e3ddc5a838d342eb49befdd1ecdf61e81";
  };

  propagatedBuildInputs = [ muninn muninn-ecmwfmars ];
}
