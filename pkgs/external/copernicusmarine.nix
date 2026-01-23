{
  buildPythonPackage,
  fetchPypi,
  poetry-core,
  arcosparse,
  boto3,
  click,
  dask,
  h5netcdf,
  lxml,
  numpy,
  pydantic,
  pystac,
  requests,
  semver,
  setuptools,
  tqdm,
  xarray,
  zarr,
}:

buildPythonPackage rec {
  pname = "copernicusmarine";
  version = "2.3.0";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "copernicusmarine";
    sha256 = "6506022e261e4adbdd8e35a9733a48f0fa3c5bca1da2c1cfb2d0a54c5a775460";
  };

  pythonRelaxDeps = true;

  build-system = [ poetry-core ];
  nativeBuildInputs = [ poetry-core ];
  propagatedBuildInputs = [
    arcosparse
    boto3
    click
    dask
    h5netcdf
    lxml
    numpy
    pydantic
    pystac
    requests
    semver
    setuptools
    tqdm
    xarray
    zarr
  ];
}
