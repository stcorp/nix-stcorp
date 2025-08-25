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
  version = "7.0.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/7.0.1.tar.gz";
    sha256 = "2df0794d24581ad6fba58005adac3fcf36d5ce8b2fd3c1a3be3f6dd8b0a0b427";
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
