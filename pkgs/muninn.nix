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
  version = "7.2.0";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/7.2.0.tar.gz";
    sha256 = "2d9fb756ef61a9fa05704ce8c945e35fd4b6a270462028f58ef3305b1741857a";
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
