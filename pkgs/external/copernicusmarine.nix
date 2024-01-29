{ buildPythonPackage, fetchPypi, writeText, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, pythonRelaxDepsHook, requests, semver, setuptools, tqdm, xarray, zarr }:

let

  # Prevent the client from creating a cache directory when the package is imported
  patch = writeText "copernicusmarine.patch" ''
    --- copernicusmarine-1.0.0-orig/copernicusmarine/core_functions/utils.py	2024-01-23 16:55:27
    +++ copernicusmarine-1.0.0/copernicusmarine/core_functions/utils.py	2024-01-29 08:53:19
    @@ -30,9 +30,7 @@

     CACHE_BASE_DIRECTORY = DEFAULT_CLIENT_BASE_DIRECTORY / "cache"

    -pathlib.Path(CACHE_BASE_DIRECTORY).mkdir(parents=True, exist_ok=True)
    -

     DATETIME_SUPPORTED_FORMATS = [
         "%Y",
         "%Y-%m-%d",
  '';

in buildPythonPackage rec {
  pname = "copernicusmarine";
  version = "1.0.0";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicusmarine";
    sha256 = "e81b9a496b27a2df9c682f212047afcdcf9177a073f2c7461ad6d00858be42e9";
  };

  patches = [ patch ];

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core pythonRelaxDepsHook setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
