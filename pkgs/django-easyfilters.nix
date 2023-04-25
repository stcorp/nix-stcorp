{ buildPythonPackage, django, python-dateutil }:

buildPythonPackage {
  pname = "django-easyfilters";
  version = "2023-04-25";

  src = builtins.fetchGit {
    url = https://github.com/stcorp/django-easyfilters;
    rev = "81501a59aa258b961a487eae4bce4260318325bb";
  };

  doCheck = false;

  propagatedBuildInputs = [ django python-dateutil ];
}
