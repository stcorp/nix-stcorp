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
  version = "3.11.11";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "django_cms";
    sha256 = "5d3cf3b64c244f0f7fa8f9310be82bb0465653113ba8d4d7d896ecad1dc44425";
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
