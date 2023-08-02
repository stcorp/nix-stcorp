{ lib, python, buildPythonPackage, paramiko, requests, tabulate, tqdm,
  withSqlite ? true, sqlite, libspatialite, pysqlite ? null,
  withPostgres ? true, psycopg2 ? null,
  withS3 ? false, boto3 ? null,
  withSwift ? false, swiftclient ? null,
}:

assert withSqlite -> (sqlite != null && libspatialite != null);
assert withS3 -> boto3 != null;
assert withPostgres -> psycopg2 != null;
assert withSwift -> swiftclient != null;

with lib;

buildPythonPackage {
  pname = "muninn";
  version = "6.1.1";

  src = builtins.fetchurl {
    url = https://files.pythonhosted.org/packages/c7/3d/38bd3eccdc6bf8e3c770a17e58d3f5fbafb62f703e9b44978c97f5b1b5d6/muninn-6.1.1.tar.gz;
    sha256 = "c3e9bc65a7e6851daa6eb71563fd6535085629b7714638c7f5dd828676c422f0";
  };

  doCheck = false;

  propagatedBuildInputs = [ paramiko requests tabulate tqdm ]
    ++ optionals withSqlite [ sqlite libspatialite ]
    ++ optional withPostgres psycopg2
    ++ optional withS3 boto3
    ++ optional withSwift swiftclient;
}
