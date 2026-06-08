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
  version = "4.1.11";
  pyproject = true;

  src = fetchPypi {
    pname = "django_cms";
    inherit version;
    sha256 = "1be4ffeadaf443a1c93893bf7257c15dc3d48586f940de121badaa82242d74b0";
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
