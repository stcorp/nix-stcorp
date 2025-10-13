{
  lib,
  stdenv,
  pythonPackages,
  autoconf,
  automake,
  libtool,
  flex,
  bison,
  zip,
  coda,
  hdf4,
  hdf5,
  libjpeg ? null,
  zlib ? null,
  python ? null,
  enableShared ? true,
}:

with builtins;

let
  inherit (lib) optional optionals;
in

stdenv.mkDerivation {
  pname = "harp";
  version = "1.27";

  src = fetchurl {
    # use official source package since we need the codadefs of the submodules to be included
    url = "https://github.com/stcorp/harp/releases/download/1.27/harp-1.27.tar.gz";
    sha256 = "187e911ae0a317945e95a72217e8c7c33eb7ba2bb54a6c1177ad6ec52a576ab8";
  };

  buildInputs = [
    autoconf
    automake
    libtool
    bison
    flex
    zip
    hdf4
    hdf5
    coda
  ]
  ++ optional (libjpeg != null) libjpeg # for hdf4
  ++ optional (zlib != null) zlib; # for hdf4/hdf5

  propagatedBuildInputs =
    [ ]
    ++ optionals (python != null) [
      python
      pythonPackages.numpy
      pythonPackages.cffi
      coda
    ];

  preConfigure = ''
    ./bootstrap
  '';

  configureFlags =
    [ ] ++ optionals (python != null) [ "--enable-python" ] ++ optional enableShared "--enable-shared";

  meta = {
    description = "Data harmonization toolset for scientific earth observation data";
    longDescription = ''
      HARP is a toolset for ingesting, processing and inter-comparing satellite or
      model data against correlative data. The toolset is composed of a set of
      command line tools, a C library of analysis functions, and import/export
      interfaces for Python, Matlab, and IDL. The main goal of HARP is to assist
      in the inter-comparison of data sets.
    '';
    license = lib.licenses.bsd3;
    homepage = "https://github.com/stcorp/harp";
    platforms = lib.platforms.unix;
  };
}
