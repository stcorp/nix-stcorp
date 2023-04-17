{ buildPythonPackage, netcdf4, numpy }:

with builtins;

buildPythonPackage {
  pname = "netcdf-compare";
  version = "2023-05-28";

  src = fetchGit {
    url = "https://github.nl/stcorp/netcdf_compare.git";
    rev = "47ec684d91aca900f901a22d99c411c20be1a10f";
    ref = "main";
  };

  propagatedBuildInputs = [ netcdf4 numpy ];
}
