{
  lib,
  buildPythonPackage,
  paramiko,
  requests,
  tabulate,
  tqdm,
  withSqlite ? true,
  sqlite,
  libspatialite,
  pysqlite ? null,
  withPostgres ? true,
  psycopg2 ? null,
  withS3 ? false,
  boto3 ? null,
  withSwift ? false,
  swiftclient ? null,
}:

assert withSqlite -> (sqlite != null && libspatialite != null);
assert withS3 -> boto3 != null;
assert withPostgres -> psycopg2 != null;
assert withSwift -> swiftclient != null;

with builtins;
with lib;

buildPythonPackage {
  pname = "muninn";
  version = "7.0.2";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/7.0.2.tar.gz";
    sha256 = "dea5726511c83cc6cc4e24d59d77491794505b3d4a34c82454796608b4642ce2";
  };

  doCheck = false;

  propagatedBuildInputs = [
    paramiko
    requests
    tabulate
    tqdm
  ]
  ++ optionals withSqlite [
    sqlite
    libspatialite
  ]
  ++ optional withPostgres psycopg2
  ++ optional withS3 boto3
  ++ optional withSwift swiftclient;
}
