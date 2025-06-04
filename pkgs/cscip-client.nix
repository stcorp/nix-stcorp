{ buildPythonPackage, oauthlib, requests, requests_oauthlib }:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2025-06-04";

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "1e252993a1aafd764819e31f72801d082e6522d2";
    ref = "main";
  };

  propagatedBuildInputs = [ oauthlib requests requests_oauthlib ];
}
