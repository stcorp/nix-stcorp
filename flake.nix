{
  description = "Overlay and NixOS modules for S[&]T packages hosted on github and for third-party packages that are not part of nixpkgs";

  outputs = { self, ... }: {
    overlays = {
      external = (final: prev: {
        pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
          (pyfinal: pyprev: {
          	# needed for muninn-django
            djangorestframework-gis = pyfinal.callPackage ./pkgs/external/djangorestframework-gis.nix {};
          	# needed for muninn-ecmwfmars
            ecmwf-api-client = pyfinal.callPackage ./pkgs/external/ecmwf-api-client.nix {};
          	# needed for legato
            schedule = pyfinal.callPackage ./pkgs/external/schedule.nix {};
          })
        ];
      });
      default = (final: prev: {
        coda = final.python3Packages.toPythonModule(final.callPackage ./pkgs/coda.nix { python = prev.python3; pythonPackages = prev.python3Packages; });
        harp = final.python3Packages.toPythonModule(final.callPackage ./pkgs/harp.nix { python = prev.python3; pythonPackages = prev.python3Packages; });
        pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
          (pyfinal: pyprev: {
            biocheck = pyfinal.callPackage ./pkgs/biocheck.nix {};
            legato = pyfinal.callPackage ./pkgs/legato.nix {};
            muninn = pyfinal.callPackage ./pkgs/muninn.nix {};
            muninn-cams = pyfinal.callPackage ./pkgs/muninn-cams.nix {};
            muninn-django = pyfinal.callPackage ./pkgs/muninn-django.nix {};
            muninn-ecmwfmars = pyfinal.callPackage ./pkgs/muninn-ecmwfmars.nix {};
            muninn-generic-products = pyfinal.callPackage ./pkgs/muninn-generic-products.nix {};
            muninn-sentinel1 = pyfinal.callPackage ./pkgs/muninn-sentinel1.nix {};
            muninn-sentinel5p = pyfinal.callPackage ./pkgs/muninn-sentinel5p.nix {};
            netcdf-compare = pyfinal.callPackage ./pkgs/netcdf-compare.nix {};
            safecheck = pyfinal.callPackage ./pkgs/safecheck.nix {};
          })
        ];
      });
    };

    nixosModules = {
      legato = import ./nixos/legato;
      default = import ./nixos;
    };
  };
}
