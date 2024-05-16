{ buildPythonPackage, fetchPypi, writeText, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, pythonRelaxDepsHook, requests, semver, setuptools, tqdm, xarray, zarr }:

buildPythonPackage rec {
  pname = "copernicusmarine";
  version = "1.2.1";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicusmarine";
    sha256 = "e637347733b6e0610b63219448cddbd2e937d1612b8a1422c9523c49a41fd647";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core pythonRelaxDepsHook setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
