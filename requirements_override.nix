{ pkgs, python }:

self: super: {

  "execnet" = python.overrideDerivation super."execnet" (old: {
    buildInputs = old.buildInputs ++ [ self."setuptools-scm" ];
  });

  "jsonschema" = python.overrideDerivation super."jsonschema" (old: {
    buildInputs = old.buildInputs ++ [ self."vcversioner" ];
  });

  "mccabe" = python.overrideDerivation super."mccabe" (old: {
    buildInputs = old.buildInputs ++ [ super."pytest-runner" ];
  });



}
