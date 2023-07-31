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
  version = "6.1";

  src = builtins.fetchurl {
    url = https://files.pythonhosted.org/packages/3d/e3/ddb8843c4433ad5e95c9ab7153142be03ba68ab6530bbd3065592c45bbf7/muninn-6.1.tar.gz;
    sha256 = "6d3717e669a72b72c4aa695ced331908fe5d1d05d8d66d74a05a8e9bcb78b41e";
  };

  doCheck = false;

  propagatedBuildInputs = [ paramiko requests tabulate tqdm ]
    ++ optionals withSqlite [ sqlite libspatialite ]
    ++ optional withPostgres psycopg2
    ++ optional withS3 boto3
    ++ optional withSwift swiftclient;
}
