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
  version = "2.25.5";

  src = fetchurl {
    url = "https://github.com/stcorp/coda/archive/2.25.5.tar.gz";
    sha256 = "fb9fe6ff0b51d47b507f48fa1fbe8b8be69d48501efeb1dc29bfc572a566111e";
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
