{ buildPythonPackage, netcdf4, numpy }:

with builtins;

buildPythonPackage {
  pname = "netcdf-compare";
  version = "2025-01-24";

  src = fetchGit {
    url = "https://github.com/stcorp/netcdf-compare.git";
    rev = "e2c320990ffa69f08e209e7cc41856a28552cc6d";
    ref = "main";
  };

  propagatedBuildInputs = [ netcdf4 numpy ];
}
