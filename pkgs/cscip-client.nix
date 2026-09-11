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
  version = "2026-09-11";
  pyproject = true;

  src = fetchGit {
    url = "https://github.com/stcorp/cscip-client.git";
    rev = "59ecdc860a5ba5ef00c5dc4d93f7f9d9cd6a9753";
    ref = "main";
  };

  build-system = [ setuptools ];
  propagatedBuildInputs = [
    oauthlib
    requests
    requests-oauthlib
  ];
}
