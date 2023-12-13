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
  version = "6.3";

  src = builtins.fetchurl {
    url = https://files.pythonhosted.org/packages/6b/6c/26bfa10ba0e737c7b75da3260196573314542445afe33cb47276f67a4a77/muninn-6.3.tar.gz;
    sha256 = "227f680f5b69d5952754c3809d2dbbb7de14c1404ad66d4cf58907e6031c25a9";
  };

  doCheck = false;

  propagatedBuildInputs = [ paramiko requests tabulate tqdm ]
    ++ optionals withSqlite [ sqlite libspatialite ]
    ++ optional withPostgres psycopg2
    ++ optional withS3 boto3
    ++ optional withSwift swiftclient;
}
