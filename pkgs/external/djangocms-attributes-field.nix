{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-attributes-field";
  version = "4.1.2";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "djangocms_attributes_field";
    sha256 = "ed7e9d78a47b30801fe6b411e1cb8aff3434ac594c2b6bb86c859d98aff59838";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [ django-cms ];
}
