{ buildPythonPackage, fetchPypi, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, requests, semver, setuptools, tqdm, xarray, zarr }:

buildPythonPackage rec {
  pname = "copernicus-marine-client";
  version = "0.10.3";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicus_marine_client";  # the package on pypi uses '_' instead of '-'
    sha256 = "9800109279ee5ab8e53570a6a7c5f6ce47c827ad0cb97409384c4089f0cb3b49";
  };

  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 poetry-core pydap pystac requests semver setuptools tqdm xarray zarr ];
}
