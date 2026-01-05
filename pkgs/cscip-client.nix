{
  buildPythonPackage,
  oauthlib,
  requests,
  requests-oauthlib,
  setuptools,
}:

with builtins;

buildPythonPackage {
  pname = "cscip-client";
  version = "2025-11-06";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "f97de6ed0ddc8f0a35a09eeb3c7e60dc589b2a80";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    oauthlib
    requests
    requests-oauthlib
  ];
}
