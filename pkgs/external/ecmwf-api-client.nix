{ buildPythonPackage, fetchurl }:

buildPythonPackage {
  pname = "ecmwf-api-client";
  version = "1.6.3";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/5b/44/ddeb18174b1cce4fe2c714c1968cd0e4272c6869c5073a3b270f071e5549/ecmwf-api-client-1.6.3.tar.gz;
    sha256 = "1mmhbnmbpcnjbwx1npnvxwrncamla13rlfcpihcxbqkj9aivs01s";
  };
}
