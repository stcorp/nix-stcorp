{ lib, buildPythonPackage, paramiko, requests, tabulate, tqdm,
  withSqlite ? true, sqlite, libspatialite, pysqlite ? null,
  withPostgres ? true, psycopg2 ? null,
  withS3 ? false, boto3 ? null,
  withSwift ? false, swiftclient ? null,
}:

assert withSqlite -> (sqlite != null && libspatialite != null);
assert withS3 -> boto3 != null;
assert withPostgres -> psycopg2 != null;
assert withSwift -> swiftclient != null;

with builtins;
with lib;

buildPythonPackage {
  pname = "muninn";
  version = "6.4";

  src = fetchurl {
    url = "https://github.com/stcorp/muninn/archive/6.4.tar.gz";
    sha256 = "6b4b374e7fd62d110b8c03f6992057d4c6f4140f356aa68b706d6e86264e6ec8";
  };

  doCheck = false;

  propagatedBuildInputs = [ paramiko requests tabulate tqdm ]
    ++ optionals withSqlite [ sqlite libspatialite ]
    ++ optional withPostgres psycopg2
    ++ optional withS3 boto3
    ++ optional withSwift swiftclient;
}
