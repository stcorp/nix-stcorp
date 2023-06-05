{ buildPythonPackage, fetchurl, django-cms }:

buildPythonPackage {
  pname = "djangocms-attributes-field";
  version = "2.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/3b/76/2cbee1d01fdb5fc72a8905aabc1033be29516a0827aa286c0f1bbb9c7133/djangocms-attributes-field-2.0.0.tar.gz;
    sha256 = "1mk5j37fmcs3pi816371l5y1ayzcq3dhgwvgfki4di1qvsa1lpsj";
  };

  doCheck = false;

  propagatedBuildInputs = [ django-cms ];
}
