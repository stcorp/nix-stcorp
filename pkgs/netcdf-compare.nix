{ buildPythonPackage, netcdf4, numpy }:

with builtins;

buildPythonPackage {
  pname = "netcdf-compare";
  version = "2023-10-19";

  src = fetchGit {
    url = "https://github.com/stcorp/netcdf-compare.git";
    rev = "1797dbb042bb1c7de1a552fbbb03ca380174fd54";
    ref = "main";
  };

  propagatedBuildInputs = [ netcdf4 numpy ];
}
