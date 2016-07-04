{ pkgs, python }:

self: super: {

  "setuptools-scm" = python.overrideDerivation super."setuptools-scm" (old: {
    buildInputs = old.buildInputs ++ [ super."setuptools-scm" ];
  });

}
