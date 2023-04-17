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
  version = "6.0";

  src = builtins.fetchurl {
    url = "https://files.pythonhosted.org/packages/f4/18/f5c17b6ef48c69d7cddae33b069874dbe7cfcc938894e1125c2747d40fe8/muninn-6.0.tar.gz";
    sha256 = "4cf7aedb5547123bc41fcac9289d2711ca6584640da3cbd2268166583cf79fcc";
  };

  doCheck = false;

  propagatedBuildInputs = [ paramiko requests tabulate tqdm ]
    ++ optionals withSqlite [ sqlite libspatialite ]
    ++ optional withPostgres psycopg2
    ++ optional withS3 boto3
    ++ optional withSwift swiftclient;
}
