{ pkgs, src }:
pkgs.stdenv.mkDerivation {
  name = "livox_sdk";
  src = pkgs.airtonomy.gitignoreSource src;
  nativeBuildInputs = with pkgs; [cmake gcc];
  propagatedBuildInput = with pkgs; [xorg.libSM];
}
