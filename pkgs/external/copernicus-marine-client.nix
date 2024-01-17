{ buildPythonPackage, fetchPypi, writeText, aiohttp, boto3, cachier, click, dask, lxml, motuclient, nest-asyncio, netcdf4, poetry-core, pydap, pystac, requests, semver, setuptools, tqdm, xarray, zarr }:

let

  # Modify xarray dependency since NixOS 23.11 includes xarray 2023.08
  patch = writeText "copernicus-marine-client.patch" ''
    --- copernicus_marine_client-0.10.4-orig/pyproject.toml	2024-01-17 10:55:27
    +++ copernicus_marine_client-0.10.4/pyproject.toml	2024-01-17 10:56:27
    @@ -14,14 +14,14 @@
     setuptools = "^68.2.2"
    -motuclient = "^1.8.4"
    +motuclient = ">=1.8.4"
     cachier = "^2.2.1"
    -xarray = ">=2023.9,<2023.12"
    +xarray = ">=2023.8"
     tqdm = "^4.65.0"
     zarr = "^2.13.3"
     pydap = "^3.2.2"
     dask = ">=2022, <2024"
    -netCDF4 = "^1.6.3"
    +netCDF4 = "^1.6.2"
     boto3 = ">=1.25,<1.34"
    -semver = "^3.0.2"
    +semver = "^3.0.1"
    -nest-asyncio = "^1.5.8"
    +nest-asyncio = "^1.5.6"
     pystac = "^1.8.3"
     lxml = "^4.9.0"
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

  nativeBuildInputs = [ poetry-core setuptools ];
  propagatedBuildInputs = [ aiohttp boto3 cachier click dask lxml motuclient nest-asyncio netcdf4 pydap pystac requests semver tqdm xarray zarr ];
}
