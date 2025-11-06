{
  buildPythonPackage,
  oauthlib,
  requests,
  requests_oauthlib,
}:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2025-11-06";

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "f97de6ed0ddc8f0a35a09eeb3c7e60dc589b2a80";
    ref = "main";
  };

  propagatedBuildInputs = [
    oauthlib
    requests
    requests_oauthlib
  ];
}
