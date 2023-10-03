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
  version = "6.2";

  src = builtins.fetchurl {
    url = https://files.pythonhosted.org/packages/cc/8c/7b82a9761538bd370a2df992290eb2e7aaffd2cbd1e2a61df7737a537b61/muninn-6.2.tar.gz;
    sha256 = "0c483803498f1dde1ef90701afbd68a9178aba0289ac84b778ad38f0b706ff2a";
  };

  doCheck = false;

  propagatedBuildInputs = [ paramiko requests tabulate tqdm ]
    ++ optionals withSqlite [ sqlite libspatialite ]
    ++ optional withPostgres psycopg2
    ++ optional withS3 boto3
    ++ optional withSwift swiftclient;
}
