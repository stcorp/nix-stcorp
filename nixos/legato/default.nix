{pkgs, lib, config, ...}:

let
  cfg = config.services.legato;

  pyenv = cfg.python.buildEnv.override {
    extraLibs = [ cfg.package ] ++ cfg.extraPythonLibs;
  };

  env = pkgs.buildEnv { name = "legato-env"; paths = [ pyenv ] ++ cfg.extraLibs; };

in with lib; {
  options = {
    services.legato = {
      enable = mkOption {
        default = false;
        type = with types; bool;
        description = ''
          Start Legato.
        '';
      };

      package = mkOption {
        type = types.package;
        default = pkgs.pythonPackages.legato;
        description = ''
          Legato package
        '';
      };

      python = mkOption {
        default = pkgs.python;
        type = types.package;
        description = ''
          Python derivation to use.
        '';
      };

      extraEnvironment = mkOption {
        type = types.attrs;
        default = {};
        description = ''
          Extra environment for the systemd unit
        '';
      };

      extraPythonLibs = mkOption {
        type = types.listOf types.package;
        default = [];
        description = ''
          Extra python packages to add to the environment.
        '';
      };

      extraLibs = mkOption {
        type = types.listOf types.package;
        default = [];
        description = ''
          Extra (non-python) packages to add to the environment.
        '';
      };

      user = mkOption {
        default = "root";
        type = types.str;
        description = ''
          Name of the user to run legato.
        '';
      };
    };
  };

  config = mkIf cfg.enable {
    systemd.services.legato = {
      wantedBy = [ "multi-user.target" ];
      description = "Legato";
      after = [ "network.target" ];
      path = [ env ];
      environment = {
        LEGATO = "${env}/bin/legato";
      } // cfg.extraEnvironment;
      serviceConfig = {
        ExecStart = "${env}/bin/legato /etc/legato.conf";
        Restart = "always";
        RuntimeDirectory = "legato";
        User = cfg.user;
      };
    };

    # Create folder for legato configuration files
    environment.etc."legato/.empty" = {
      text = "";
      mode = "0444";
    };

    # Tell legato to watch the folder /etc/legato for configuration
    environment.etc."legato.conf".text = ''
      include_etc_dir:
        include: /etc/legato/
    '';
  };
}
