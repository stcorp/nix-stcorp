{ buildPythonPackage, oauthlib, requests, requests_oauthlib }:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2025-03-21";

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "7e8db793b6bd87f58947efa9bd83af567f3faf15";
    ref = "main";
  };

  propagatedBuildInputs = [ oauthlib requests requests_oauthlib ];
}
