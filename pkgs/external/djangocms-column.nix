{ buildPythonPackage, fetchurl, django-cms, django }:

buildPythonPackage {
  pname = "djangocms-column";
  version = "2.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/6a/2f/fece47a918844a1b0c63636c25b74f544356f228d333981760fb1be178b3/djangocms-column-2.0.0.tar.gz;
    sha256 = "1ded8ae99053cf0a174e862e9c8c72d5b9c5dec78ed4a860a0630c616c2e48b7";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms django ];
}
