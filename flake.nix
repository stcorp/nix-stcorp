{
  description = "Overlay and NixOS modules for S[&]T packages hosted on github and for third-party packages that are not part of nixpkgs";

  outputs =
    { self, ... }:
    {
      overlays = {
        boto135 = (
          final: prev: {
            # These are pins for the last boto<1.36 packages (from NixOS 24.11)
            # This overlay can be included to workaround the changes introduced in
            # https://github.com/boto/boto3/issues/4392
            # (such as https://github.com/boto/boto3/issues/4435)
            pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
              (pyfinal: pyprev: {
                # use boto<1.36
                aiobotocore = pyprev.aiobotocore.overridePythonAttrs (attr: {
                  version = "2.15.1";
                  src = final.fetchFromGitHub {
                    owner = "aio-libs";
                    repo = "aiobotocore";
                    tag = "2.15.1";
                    hash = "sha256-kPSkvvXBBwnWrdf0jmDNiTG6T1qpm5pNcPDHpnMFdmc=";
                  };
                  doCheck = false;
                });
                boto3 = pyprev.boto3.overrideAttrs (attr: {
                  version = "1.35.30";
                  src = final.fetchFromGitHub {
                    owner = "boto";
                    repo = "boto3";
                    tag = "1.35.30";
                    hash = "sha256-b08tC8EA6iW0O/7rseD9pTkKh/cJ2fe3xJZkEqxS6VI=";
                  };
                });
                botocore = pyprev.botocore.overrideAttrs (attr: {
                  version = "1.35.30";
                  src = pyfinal.fetchPypi {
                    pname = "botocore";
                    version = "1.35.30";
                    hash = "sha256-q1NQ6KUOSNNx+i1RfWXCmkDEN4jLmhU4f5PqxaI98P0=";
                  };
                });
                s3fs = pyprev.s3fs.overridePythonAttrs (attr: {
                  doCheck = false;
                });
                s3transfer = pyprev.s3transfer.overrideAttrs (attr: {
                  version = "0.10.1";
                  src = final.fetchFromGitHub {
                    owner = "boto";
                    repo = "s3transfer";
                    tag = "0.10.1";
                    hash = "sha256-EHNkYviafnuU8AADp9oyaDuAnoPOdOVNSLCcoONnHPY=";
                  };
                });
              })
            ];
          }
        );
        external = (
          final: prev: {
            pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
              (pyfinal: pyprev: {
                # patched version of django-easyfilters that works with latest Django versions
                django-easyfilters = pyfinal.callPackage ./pkgs/django-easyfilters.nix { };

                # django-cms with several extensions and dependencies
                django-cms = pyfinal.callPackage ./pkgs/external/django-cms.nix { };
                django-filer = pyfinal.callPackage ./pkgs/external/django-filer.nix { };
                djangocms-admin-style = pyfinal.callPackage ./pkgs/external/djangocms-admin-style.nix { };
                djangocms-attributes-field = pyfinal.callPackage ./pkgs/external/djangocms-attributes-field.nix { };
                djangocms-column = pyfinal.callPackage ./pkgs/external/djangocms-column.nix { };
                djangocms-file = pyfinal.callPackage ./pkgs/external/djangocms-file.nix { };
                djangocms-link = pyfinal.callPackage ./pkgs/external/djangocms-link.nix { };
                djangocms-picture = pyfinal.callPackage ./pkgs/external/djangocms-picture.nix { };
                djangocms-snippet = pyfinal.callPackage ./pkgs/external/djangocms-snippet.nix { };
                djangocms-style = pyfinal.callPackage ./pkgs/external/djangocms-style.nix { };
                djangocms-text-ckeditor = pyfinal.callPackage ./pkgs/external/djangocms-text-ckeditor.nix { };
                djangocms-video = pyfinal.callPackage ./pkgs/external/djangocms-video.nix { };

                # needed for muninn-django
                djangorestframework-gis = pyfinal.callPackage ./pkgs/external/djangorestframework-gis.nix { };

                # needed for muninn-ecmwfmars
                ecmwf-api-client = pyfinal.callPackage ./pkgs/external/ecmwf-api-client.nix { };

                # pystac packages
                pystac-client = pyfinal.callPackage ./pkgs/external/pystac-client.nix { };
                pystac = pyfinal.callPackage ./pkgs/external/pystac.nix { };

                # needed for legato
                schedule = pyfinal.callPackage ./pkgs/external/schedule.nix { };

                # copernicusmarine and dependencies
                copernicusmarine = pyfinal.callPackage ./pkgs/external/copernicusmarine.nix { };
                motuclient = pyfinal.callPackage ./pkgs/external/motuclient.nix { };
                pydap = pyfinal.callPackage ./pkgs/external/pydap.nix { };
              })
            ];
          }
        );
        default = (
          final: prev: {
            coda = final.python3Packages.toPythonModule (
              final.callPackage ./pkgs/coda.nix {
                python = prev.python3;
                pythonPackages = prev.python3Packages;
              }
            );
            harp = final.python3Packages.toPythonModule (
              final.callPackage ./pkgs/harp.nix {
                python = prev.python3;
                pythonPackages = prev.python3Packages;
              }
            );
            codadef-biomass = final.callPackage ./pkgs/codadef-biomass.nix { };
            pythonPackagesExtensions = prev.pythonPackagesExtensions ++ [
              (pyfinal: pyprev: {
                biocheck = pyfinal.callPackage ./pkgs/biocheck.nix { };
                cscip-client = pyfinal.callPackage ./pkgs/cscip-client.nix { };
                legato = pyfinal.callPackage ./pkgs/legato.nix { };
                muninn = pyfinal.callPackage ./pkgs/muninn.nix { };
                muninn-biomass = pyfinal.callPackage ./pkgs/muninn-biomass.nix { };
                muninn-cams = pyfinal.callPackage ./pkgs/muninn-cams.nix { };
                muninn-django = pyfinal.callPackage ./pkgs/muninn-django.nix { };
                muninn-ecmwfmars = pyfinal.callPackage ./pkgs/muninn-ecmwfmars.nix { };
                muninn-eps-sg = pyfinal.callPackage ./pkgs/muninn-eps-sg.nix { };
                muninn-generic-products = pyfinal.callPackage ./pkgs/muninn-generic-products.nix { };
                muninn-geoms = pyfinal.callPackage ./pkgs/muninn-geoms.nix { };
                muninn-iers = pyfinal.callPackage ./pkgs/muninn-iers.nix { };
                muninn-sentinel1 = pyfinal.callPackage ./pkgs/muninn-sentinel1.nix { };
                muninn-sentinel2 = pyfinal.callPackage ./pkgs/muninn-sentinel2.nix { };
                muninn-sentinel5p = pyfinal.callPackage ./pkgs/muninn-sentinel5p.nix { };
                netcdf-compare = pyfinal.callPackage ./pkgs/netcdf-compare.nix { };
                pvml = pyfinal.callPackage ./pkgs/pvml.nix { };
                safecheck = pyfinal.callPackage ./pkgs/safecheck.nix { };
              })
            ];
          }
        );
      };

      nixosModules = {
        legato = import ./nixos/legato;
        default = import ./nixos;
      };
    };
}
