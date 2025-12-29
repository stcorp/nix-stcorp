{
  buildPythonPackage,
  fetchPypi,
  django,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-admin-style";
  version = "3.2.6";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "f093c65c92db09713726d71280ecea602d5f348c9ad3b02281f7af245a0598db";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [ django ];
}
