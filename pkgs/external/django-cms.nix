{
  buildPythonPackage,
  fetchPypi,
  django,
  django-classy-tags,
  django-formtools,
  django-sekizai,
  django-treebeard,
  djangocms-admin-style,
  packaging,
  setuptools,
}:

buildPythonPackage rec {
  pname = "django-cms";
  version = "3.11.4";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    sha256 = "58ff8bda97f0012fe365eaa542f1c91a310c6b774030ef5d6c2c3caaabf3cf31";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django
    django-classy-tags
    django-formtools
    django-treebeard
    django-sekizai
    djangocms-admin-style
    packaging
  ];
}
