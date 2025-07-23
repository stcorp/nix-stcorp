{
  buildPythonPackage,
  fetchPypi,
  poetry-core,
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
  version = "2.0.0";
  format = "pyproject";

  src = fetchPypi {
    inherit version;
    pname = "copernicusmarine";
    sha256 = "b279ae3ac9e6c832d98eb4cf55bd2a167782d5ec695df70dc7e015cdddea631c";
  };

  pythonRelaxDeps = true;

  nativeBuildInputs = [ poetry-core ];
  propagatedBuildInputs = [
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
