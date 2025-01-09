{ lib,
  stdenv,
  pythonPackages,
  autoconf, automake, libtool, bison, flex, doxygen,
  hdf4 ? null,
  hdf5 ? null,
  libjpeg ? null,
  zlib ? null,
  python ? null,
  enableShared ? true
}:

with builtins;

let inherit (lib) optional optionals; in

stdenv.mkDerivation {
  pname = "coda";
  version = "2.25.3";

  src = fetchurl {
    url = "https://github.com/stcorp/coda/archive/2.25.3.tar.gz";
    sha256 = "93eac777d70b70d77bcd3f1cf9d516daa960e64167815e14cbacc2bf8e58368e";
  };

  buildInputs = [autoconf automake libtool bison flex doxygen]
    ++ optional (hdf4 != null) hdf4
    ++ optional (hdf5 != null) hdf5
    ++ optional (hdf4 != null && libjpeg != null) libjpeg
    ++ optional ((hdf4 != null || hdf5 != null) && zlib != null) zlib;

  propagatedBuildInputs = []
    ++ optionals (python != null) [python pythonPackages.numpy pythonPackages.cffi];

  preConfigure = ''
    ./bootstrap
  '';

  configureFlags = []
    ++ optional (hdf4 != null) ["--with-hdf4"]
    ++ optional (hdf5 != null) ["--with-hdf5"]
    ++ optionals (python != null) ["--enable-python"]
    ++ optional enableShared "--enable-shared";

  meta = {
    description = "The Common Data Access toolset";
    longDescription = ''
      The Common Data Access toolbox (CODA) provides a set of interfaces for reading
      remote sensing data from earth observation data files. These interfaces consist
      of command line applications, libraries, interfaces to scientific applications
      (such as IDL and MATLAB), and interfaces to programming languages
      (such as C, Fortran, Python, and Java).
    '';
    license = lib.licenses.bsd3;
    homepage = http://stcorp.nl/coda/;
    platforms = lib.platforms.unix;
  };
}
