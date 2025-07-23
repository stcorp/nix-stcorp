{
  buildPythonPackage,
  django,
  djangorestframework,
  djangorestframework-gis,
  muninn,
}:

buildPythonPackage {
  pname = "muninn-django";
  version = "1.2.2";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-django/archive/1.2.2.tar.gz";
    sha256 = "55d3fb682bcb3568bc0b05db4528cebc39df6a2dea337d2ce14ae85c9f3d3beb";
  };

  doCheck = false;

  propagatedBuildInputs = [
    django
    djangorestframework
    djangorestframework-gis
    muninn
  ];
}
