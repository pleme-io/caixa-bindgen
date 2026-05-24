# nix/modules/nixos.nix — auto-generated from bindgen.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bindgen;
in {
  options.services.bindgen = {
    enable = lib.mkEnableOption "bindgen";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bindgen or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
