{ stdenv, zip }:

with builtins;

stdenv.mkDerivation {
  pname = "codadef-biomass";
  version = "2025-03-17";

  src = fetchGit {
    url = "https://github.com/stcorp/codadef-biomass.git";
    rev = "d6887574a36013db7adfb6f7ea5d5f75114307e9";
    ref = "main";
  };

  installPhase = ''
    class=`grep "<cd:ProductClass" ./index.xml | sed -e 's:^.*name=\"\([^"]*\).*$:\1:'`
    files=`find . ./types ./products -maxdepth 1 -name "*.xml"`
    date=`(for file in $files ; do grep last-modified $file | head -1 ; done) | sed -e 's:^.*last-modified=\"\([^"]*\).*$:\1:' | sort -r | head -1 | sed 's:-::g'`
    echo $date > VERSION
    mkdir -p $out
    ${zip}/bin/zip -q $out/$class-$date.codadef VERSION *.xml types/*.xml products/*.xml
  '';
}
