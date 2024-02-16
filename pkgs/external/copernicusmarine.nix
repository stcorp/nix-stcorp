{ buildPythonPackage, fetchPypi, writeText, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, pythonRelaxDepsHook, requests, semver, setuptools, tqdm, xarray, zarr }:

buildPythonPackage rec {
  pname = "copernicusmarine";
  version = "1.0.2";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicusmarine";
    sha256 = "53ee976282c381455b758636a7e4f591ae9588a19fa493ed414e5646dafd766f";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core pythonRelaxDepsHook setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
