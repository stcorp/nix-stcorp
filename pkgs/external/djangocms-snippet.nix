{ buildPythonPackage, fetchurl, django-cms }:

buildPythonPackage {
  pname = "djangocms-snippet";
  version = "3.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/8b/43/1c72bb8419e0478fecad7fe2865caeb76fb47c39be40ddaa341eb1b97264/djangocms-snippet-3.0.0.tar.gz;
    sha256 = "10nbzlpqhw6jiagggwvlvp59yj2v7h71clg1jzivpnixj3y666dv";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms ];
}
