{ buildPythonPackage, oauthlib, requests, requests_oauthlib }:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2025-06-25";

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "1f4dae468fa7541f7c1dc2bf0fdc51c1eb1063ed";
    ref = "main";
  };

  propagatedBuildInputs = [ oauthlib requests requests_oauthlib ];
}
