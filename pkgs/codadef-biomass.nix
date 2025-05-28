{ stdenv, zip }:

stdenv.mkDerivation {
  pname = "codadef-biomass";
  version = "2025-05-28";

  src = fetchGit {
    url = "https://github.com/stcorp/codadef-biomass.git";
    rev = "9d5cd7b3149bcb4dce7f6f1c82b802369a8f9c60";
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
