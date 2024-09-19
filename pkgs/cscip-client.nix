{ buildPythonPackage, oauthlib, requests, requests_oauthlib }:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2024-09-19";

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "b29dc0b43b4a96a874335a30068245b1a03445fe";
    ref = "main";
  };

  propagatedBuildInputs = [ oauthlib requests requests_oauthlib ];
}
