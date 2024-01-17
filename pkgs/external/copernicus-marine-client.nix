{ buildPythonPackage, fetchPypi, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, pythonRelaxDepsHook, requests, semver, setuptools, tqdm, xarray, zarr }:

buildPythonPackage rec {
  pname = "copernicus-marine-client";
  version = "0.10.4";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicus_marine_client";  # the package on pypi uses '_' instead of '-'
    sha256 = "8151873fcd381beb746d25fa901752ac5ba7574c6aebf6e557bb051f38339dee";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core pythonRelaxDepsHook setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
