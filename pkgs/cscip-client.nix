{ buildPythonPackage, oauthlib, requests, requests_oauthlib }:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2024-10-02";

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "53136ec3d43fd76a6af0b486147f0b5f398ba575";
    ref = "main";
  };

  propagatedBuildInputs = [ oauthlib requests requests_oauthlib ];
}
