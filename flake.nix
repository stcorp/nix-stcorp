{
  description = "Overlay and NixOS modules for S[&]T packages hosted on github and for third-party packages that are not part of nixpkgs";

  outputs = { self, ... }: {
    overlays = {
      external = (final: prev: {
        pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
          (pyfinal: pyprev: {
            # patched version of django-easyfilters that works with latest Django versions
            django-easyfilters = pyfinal.callPackage ./pkgs/django-easyfilters.nix {};
            # needed for muninn-django
            djangorestframework-gis = pyfinal.callPackage ./pkgs/external/djangorestframework-gis.nix {};
            # needed for muninn-ecmwfmars
            ecmwf-api-client = pyfinal.callPackage ./pkgs/external/ecmwf-api-client.nix {};
            # needed for legato
            schedule = pyfinal.callPackage ./pkgs/external/schedule.nix {};
          })
        ];
      });
      djangocms = (final: prev: {
        # django-cms with several extensions and dependencies
        pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
          (pyfinal: pyprev: {
            django-cms = pyfinal.callPackage ./pkgs/external/django-cms.nix {};
            django-filer = pyfinal.callPackage ./pkgs/external/django-filer.nix { unidecode = pyfinal.unidecode_1_1_2; };
            django-sekizai = pyfinal.callPackage ./pkgs/external/django-sekizai.nix {};
            djangocms-admin-style = pyfinal.callPackage ./pkgs/external/djangocms-admin-style.nix {};
            djangocms-attributes-field = pyfinal.callPackage ./pkgs/external/djangocms-attributes-field.nix {};
            djangocms-column = pyfinal.callPackage ./pkgs/external/djangocms-column.nix {};
            djangocms-file = pyfinal.callPackage ./pkgs/external/djangocms-file.nix {};
            djangocms-link = pyfinal.callPackage ./pkgs/external/djangocms-link.nix {};
            djangocms-picture = pyfinal.callPackage ./pkgs/external/djangocms-picture.nix {};
            djangocms-snippet = pyfinal.callPackage ./pkgs/external/djangocms-snippet.nix {};
            djangocms-style = pyfinal.callPackage ./pkgs/external/djangocms-style.nix {};
            djangocms-text-ckeditor = pyfinal.callPackage ./pkgs/external/djangocms-text-ckeditor.nix {};
            djangocms-video = pyfinal.callPackage ./pkgs/external/djangocms-video.nix {};
            unidecode_1_1_2 = pyfinal.callPackage ./pkgs/external/unidecode.nix {};
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
