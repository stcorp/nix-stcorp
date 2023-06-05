{ buildPythonPackage, fetchurl, django-cms, djangocms-attributes-field }:

buildPythonPackage {
  pname = "djangocms-style";
  version = "3.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/c0/5f/6cbe5c193612fbc6fd3d5b80188b0e34bed9c3b98a78379222805a5ec287/djangocms-style-3.0.0.tar.gz;
    sha256 = "1d5gmi0z3fy9qwppyf37gcf7sqxfs7p2wj05sr0ssl0rjnibcdp3";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms djangocms-attributes-field ];
}
