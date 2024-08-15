{ pkgs, lib,  ... }:
pkgs.stdenv.mkDerivation rec {
  name = "oidc-keycloack-sso";
  version = "1.0.0";
  src = pkgs.fetchFromGitHub {
    owner = "flopraden";
    repo = "oidc-keycloak-sso";
    rev = "46e05c6a1cc51a7e652417ce811d6b29d038a749";
    hash = "sha256-On5MQhyEK1ibEV0HLfSEub7vHY3kU3BsMvX0WAST8Tg=";
  };
  # It's a mu-plugins, only copy the files that should be autoloaded
  installPhase = "mkdir -p $out; cp -R oidc-keycloak-custom.php $out/";
}
