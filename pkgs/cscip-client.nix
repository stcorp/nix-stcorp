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
  version = "2026-04-20";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "7e842df8a355c578b77bf0be7afe265770ae7f92";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    oauthlib
    requests
    requests-oauthlib
  ];
}
