{
  buildPythonPackage,
  muninn,
  setuptools
}:

buildPythonPackage {
  pname = "muninn-generic-products";
  version = "1.1";
  pyproject = true;

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-generic-products/archive/1.1.tar.gz";
    sha256 = "03diglml7555i5klsgaxcsg09gmk5z3j2r9vs20g7hwhxnd8bn1r";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [ muninn ];
}
