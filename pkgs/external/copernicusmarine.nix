{ buildPythonPackage, fetchPypi, writeText, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, pythonRelaxDepsHook, requests, semver, setuptools, tqdm, xarray, zarr }:

buildPythonPackage rec {
  pname = "copernicusmarine";
  version = "2.0.1";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicusmarine";
    sha256 = "94164e4f2f236c3e2cb27c9d441c02febf4713db73f2f013d27ce832d21827b1";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core pythonRelaxDepsHook setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
