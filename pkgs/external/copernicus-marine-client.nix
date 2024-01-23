{ buildPythonPackage, fetchPypi, writeText, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, pythonRelaxDepsHook, requests, semver, setuptools, tqdm, xarray, zarr }:

let

  # Prevent the client from creating a cache directory when the package is imported
  patch = writeText "copernicus-marine-client.patch" ''
    --- copernicus_marine_client-0.10.4-orig/copernicus_marine_client/core_functions/utils.py	2024-01-23 11:21:03
    +++ copernicus_marine_client-0.10.4/copernicus_marine_client/core_functions/utils.py	2024-01-23 11:21:56
    @@ -30,8 +30,6 @@

     CACHE_BASE_DIRECTORY = DEFAULT_CLIENT_BASE_DIRECTORY / "cache"

    -pathlib.Path(CACHE_BASE_DIRECTORY).mkdir(parents=True, exist_ok=True)
    -
     # Client name, to be used in custom query parameters for each request to MDS S3
     # endpoints, in order to track statistics of usage
     CLIENT_NAME = "copernicus-marine-client"
  '';

in buildPythonPackage rec {
  pname = "copernicus-marine-client";
  version = "0.10.4";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicus_marine_client";  # the package on pypi uses '_' instead of '-'
    sha256 = "8151873fcd381beb746d25fa901752ac5ba7574c6aebf6e557bb051f38339dee";
  };

  patches = [ patch ];

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core pythonRelaxDepsHook setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
