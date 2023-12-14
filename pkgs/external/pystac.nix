{ buildPythonPackage, python-dateutil }:

with builtins;

buildPythonPackage {
  pname = "pystac";
  version = "1.6.1";
  src = fetchurl {
      url = https://files.pythonhosted.org/packages/27/f8/ac7d847a6ebb6a2344daccc9594d40aacb44d1ee00a4b871a1c6e13ba049/pystac-1.6.1.tar.gz;
      sha256 = "95ef493d6a6df4d982385c1d376c8aa0d967730e8ffeeda0f78cd7372faf066a";
  };

  doCheck = false;

  propagatedBuildInputs = [ python-dateutil ];
}
