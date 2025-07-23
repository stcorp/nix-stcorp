{
  buildPythonPackage,
  fetchPypi,
  django,
  django_classytags,
  django-formtools,
  django-sekizai,
  django_treebeard,
  djangocms-admin-style,
  packaging,
}:

buildPythonPackage rec {
  pname = "django-cms";
  version = "3.11.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "58ff8bda97f0012fe365eaa542f1c91a310c6b774030ef5d6c2c3caaabf3cf31";
  };

  doCheck = false;

  propagatedBuildInputs = [
    django
    django_classytags
    django-formtools
    django_treebeard
    django-sekizai
    djangocms-admin-style
    packaging
  ];
}
