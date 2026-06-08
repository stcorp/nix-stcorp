{
  buildPythonPackage,
  fetchPypi,
  django,
  django-cms,
  django-parler,
  setuptools,
}:

buildPythonPackage rec {
  pname = "djangocms-alias";
  version = "2.0.5";
  pyproject = true;

  src = fetchPypi {
    pname = "djangocms_alias";
    inherit version;
    sha256 = "81e19b22a9e5cd0a633c93289e6b326a9679b0d4a9dfe7036a9cbbd891acbb1f";
  };

  doCheck = false;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    django
    django-cms
    django-parler
  ];
}
