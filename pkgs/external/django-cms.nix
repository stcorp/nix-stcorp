{ buildPythonPackage, fetchurl, django, django_classytags, django-formtools, django-sekizai, django_treebeard, djangocms-admin-style }:

buildPythonPackage {
  pname = "django-cms";
  version = "3.10.1";

  src = fetchurl {
    url = https://github.com/django-cms/django-cms/archive/refs/tags/3.10.1.tar.gz;
    sha256 = "461ad57f17a489a43395eb4d28f0f685a0d72f49088159a6fb02af54c4571bac";
  };

  doCheck = false;

  propagatedBuildInputs = [ django django_classytags django-formtools django_treebeard django-sekizai djangocms-admin-style ];
}
