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
  version = "7.5.1";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/7.5.1.tar.gz";
    sha256 = "d5e2d206be550e739b2d08f0eef4be390f1eccb1e7de91bbebd924a4a05e3165";
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
