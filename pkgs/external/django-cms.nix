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
  version = "5.0.8";
  pyproject = true;

  src = fetchPypi {
    pname = "django_cms";
    inherit version;
    sha256 = "ad3c640cfd784d93f0fb33fd3ba8ecfbd024c2e65b01a86a14379a0a5a895283";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django
    django-classy-tags
    django-formtools
    django-sekizai
    django-treebeard
    djangocms-admin-style
    packaging
  ];
}
