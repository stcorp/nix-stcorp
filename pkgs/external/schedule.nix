{ 
  buildPythonPackage,
  fetchPypi,
  setuptools,
}:

buildPythonPackage rec {
  pname = "schedule";
  version = "1.2.2";

  doCheck = false;

  src = fetchPypi {
    inherit pname version;
    sha256 = "15fe9c75fe5fd9b9627f3f19cc0ef1420508f9f9a46f45cd0769ef75ede5f0b7";
  };

  pyproject = true;

  build-system = [ setuptools ];
}
