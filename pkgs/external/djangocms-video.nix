{ buildPythonPackage, fetchurl, django-cms, django-filer, djangocms-attributes-field }:

buildPythonPackage {
  pname = "djangocms-video";
  version = "3.0.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/67/4b/b7c96dbf53549837431122424c8c976d063a1fa7ecdbc2fd023d9bcdc6d0/djangocms-video-3.0.0.tar.gz;
    sha256 = "0yfv6f2py589rlpmhka35vx3v2cihl7nvkjwl5h5yh6pn6fz6g85";
  };
  doCheck = false;

  propagatedBuildInputs = [ django-cms django-filer djangocms-attributes-field ];
}
