{ buildPythonPackage, fetchurl, django-cms, html5lib, pillow }:

buildPythonPackage {
  pname = "djangocms-text-ckeditor";
  version = "5.1.1";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/38/5a/0a29e6011fd2b5c7ed1ad16168e77ab08255a659e35a8ea74c97ddb0ce2c/djangocms-text-ckeditor-5.1.1.tar.gz;
    sha256 = "cb02aab2e0a96e6b77495ff74e9e094db8efa2f8a71afb244848e9584f614952";
  };
  doCheck = false;

  propagatedBuildInputs = [ django-cms html5lib pillow ];
}
