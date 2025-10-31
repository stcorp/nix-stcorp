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
  version = "7.2.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/7.2.1.tar.gz";
    sha256 = "f3188c6ef74399106ed12a724a8ccb81d3587a9347db6820f55cdacf70f2e75d";
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
