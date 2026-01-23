{
  buildPythonPackage,
  fetchPypi,
  poetry-core,
  pandas,
  pystac,
  pyarrow,
  requests,
  tqdm,
}:

buildPythonPackage rec {
  pname = "arcospares";
  version = "0.4.2";
  pyproject = true;

  src = fetchPypi {
    inherit version;
    pname = "arcosparse";
    sha256 = "67c356f9db02dee5e4d74d64afcb73b208c0a056f828d746931c85909e548450";
  };

  pythonRelaxDeps = true;

  build-system = [ poetry-core ];
  nativeBuildInputs = [ poetry-core ];
  propagatedBuildInputs = [
    pandas
    pystac
    pyarrow
    requests
    tqdm
  ];
}
