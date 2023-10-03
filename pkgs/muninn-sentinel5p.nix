{ buildPythonPackage, coda, muninn }:

buildPythonPackage {
  pname = "muninn-sentinel5p";
  version = "2.2";

  src = builtins.fetchurl {
    url = https://files.pythonhosted.org/packages/fa/b2/e98946cc82eb34751191f2b1b1e46e7b50d38f6153f16734155befc2f034/muninn-sentinel5p-2.2.tar.gz;
    sha256 = "b30537118c8ec410dc668f98d8ef8222d3c57179fb4a0ca832896c0f33ccd36b";
  };

  propagatedBuildInputs = [ coda muninn ];
}
