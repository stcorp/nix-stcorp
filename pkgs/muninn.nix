{
  lib,
  buildPythonPackage,
  paramiko,
  requests,
  setuptools,
  tabulate,
  tqdm,
  withSqlite ? true,
  sqlite,
  libspatialite,
  pysqlite ? null,
  withPostgres ? true,
  psycopg ? null,
  psycopg2 ? null,
  withS3 ? false,
  boto3 ? null,
  withSwift ? false,
  swiftclient ? null,
}:

assert withSqlite -> (sqlite != null && libspatialite != null);
assert withS3 -> boto3 != null;
assert withPostgres -> psycopg != null || psycopg2 != null;
assert withSwift -> swiftclient != null;

with builtins;
with lib;

buildPythonPackage {
  pname = "muninn";
  version = "7.4.0";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/7.4.0.tar.gz";
    sha256 = "0c614bf3a7d58e29108f4e823e8b38999ca013429c7bd64013b9f0deb03101c2";
  };

  pyproject = true;

  build-system = [ setuptools ];

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
  ++ optionals withPostgres [
    psycopg
    psycopg2
  ]
  ++ optional withS3 boto3
  ++ optional withSwift swiftclient;
}
