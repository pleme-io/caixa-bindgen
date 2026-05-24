# nix/modules/home-manager.nix — auto-generated from bindgen.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bindgen; in {
  options.programs.bindgen = {
    enable = lib.mkEnableOption "bindgen";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bindgen or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
