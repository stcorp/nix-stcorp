{
  buildPythonPackage,
  django,
  python-dateutil,
  setuptools,
}:

buildPythonPackage {
  pname = "django-easyfilters";
  version = "2023-04-25";
  pyproject = true;

  src = builtins.fetchGit {
    url = "https://github.com/stcorp/django-easyfilters.git";
    rev = "81501a59aa258b961a487eae4bce4260318325bb";
    ref = "main";
  };

  doCheck = false;

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    django
    python-dateutil
  ];
}
