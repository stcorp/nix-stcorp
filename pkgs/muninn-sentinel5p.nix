{ buildPythonPackage, coda, muninn }:

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2.1";

  src = builtins.fetchurl {
    url = "https://github.com/stcorp/muninn-sentinel5p/archive/2.1.tar.gz";
    sha256 = "0q6jq2n4yw4m5cqksbaad7agq1gym1v4b2ydxyi3ci4v4rngw6rd";
  };

  propagatedBuildInputs = [ coda muninn ];
}
