{
  buildPythonPackage,
  muninn,
  muninn-ecmwfmars,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "muninn-cams";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn-cams/archive/2.3.1.tar.gz";
    sha256 = "253fb9bef96b23db7da6d842ed7d6a29831dfb8f11a0a84daae8d76c0431fbe1";
  };

  pyproject = true;

  build-system = [ setuptools ];

  propagatedBuildInputs = [
    muninn
    muninn-ecmwfmars
  ];
}
