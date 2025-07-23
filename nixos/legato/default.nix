{
  pkgs,
  lib,
  config,
  ...
}:

let

  cfg = config.services.legato;

  pyenv = cfg.python.buildEnv.override {
    extraLibs = [ cfg.package ] ++ cfg.extraPythonLibs;
  };

  env = pkgs.buildEnv {
    name = "legato-env";
    paths = [ pyenv ] ++ cfg.extraLibs;
  };

  defaultConfigFile = pkgs.writeText "legato.conf" ''
    ${cfg.appendConfig}
  '';

in

with lib;

{
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
        default = { };
        description = ''
          Extra environment for the systemd unit
        '';
      };

      extraPythonLibs = mkOption {
        type = types.listOf types.package;
        default = [ ];
        description = ''
          Extra python packages to add to the environment.
        '';
      };

      extraLibs = mkOption {
        type = types.listOf types.package;
        default = [ ];
        description = ''
          Extra (non-python) packages to add to the environment.
        '';
      };

      user = mkOption {
        default = "legato";
        type = types.str;
        description = ''
          Name of the user to run legato.
        '';
      };

      group = mkOption {
        default = null;
        type = types.nullOr types.str;
        description = ''
          Name of the group to run legato.
        '';
      };

      configFile = lib.mkOption {
        type = lib.types.path;
        default = defaultConfigFile;
        description = ''
          The legato config file to use. By default this is generated from config.services.legato.appendConfig.
        '';
      };

      appendConfig = mkOption {
        type = types.lines;
        default = "";
        description = ''
          Configuration lines to be appended to the legato configuration file.
          This setting is ignored if config.services.legato.configFile is set explicitly.
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
      }
      // cfg.extraEnvironment;
      restartTriggers = [ cfg.configFile ];
      serviceConfig = {
        ExecStart = "${env}/bin/legato ${cfg.configFile}";
        Restart = "always";
        RuntimeDirectory = "legato";
        User = cfg.user;
      }
      // lib.optionalAttrs (cfg.group != null) {
        Group = cfg.group;
      };
    };

    users = lib.optionalAttrs (cfg.user == "legato") {
      users.legato = {
        group = (if cfg.group == null then "legato" else cfg.group);
        isSystemUser = true;
      };
      groups = lib.optionalAttrs (cfg.group == null) {
        legato = { };
      };
    };
  };
}
