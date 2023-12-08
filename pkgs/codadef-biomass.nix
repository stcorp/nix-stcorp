{ stdenv, zip }:

with builtins;

stdenv.mkDerivation {
  pname = "codadef-biomass";
  version = "2023-12-08";

  src = fetchGit {
    url = "https://github.com/stcorp/codadef-biomass.git";
    rev = "f01fbc5a6081f3c51c1666c0ea895a2d8cfa2012";
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
