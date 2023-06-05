{ buildPythonPackage, fetchurl }:

buildPythonPackage {
  pname = "djangocms-admin-style";
  version = "3.2.0";

  src = fetchurl {
    url = https://files.pythonhosted.org/packages/b8/4c/ca5d3bc7128e423b198d4e6b34b8ba42da3c22846ccb75a4303bd8af36ea/djangocms-admin-style-3.2.0.tar.gz;
    sha256 = "1850e731fb19a4323da52bf31a9df3aee4643f3b88fa44280a808f28ca0b5e8d";
  };

  doCheck = false;
}
