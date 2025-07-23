{
  buildPythonPackage,
  fetchPypi,
  django-cms,
  html5lib,
  pillow,
}:

buildPythonPackage rec {
  pname = "djangocms-text-ckeditor";
  version = "5.1.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "eca45b3393879c61bb69d3c23df14a5fd4bef1f2ad66dc36a5bf7bfe06c6b7c3";
  };
  doCheck = false;

  propagatedBuildInputs = [
    django-cms
    html5lib
    pillow
  ];
}
