{ pkgSrc ? { outPath = ./.; name = "source"; }
, pkgs ? import <nixpkgs> {}
}:

let
  python = import ./requirements.nix { inherit pkgs; };
  version = (builtins.fromJSON (builtins.readFile ./version.json)).version_string;
in python.mkDerivation {
  name = "scriptworker-${version}";
  src = pkgSrc;
  buildInputs = [
    python.pkgs."coverage"
    python.pkgs."flake8"
    python.pkgs."mock"
    python.pkgs."pytest"
    python.pkgs."pytest-asyncio"
    python.pkgs."pytest-cov"
    python.pkgs."pytest-mock"
    python.pkgs."pytest-xdist"
    python.pkgs."virtualenv"
  ];
  propagatedBuildInputs = [
    python.pkgs."aiohttp"
    python.pkgs."arrow"
    python.pkgs."defusedxml"
    python.pkgs."frozendict"
    python.pkgs."jsonschema"
    python.pkgs."taskcluster"
    python.pkgs."virtualenv"
  ] ++ (builtins.attrValues python.modules);
  # TODO: need to fix 10 failed tests
  # 10 failed, 1116 passed, 43 skipped, 2 pytest-warnings, 140 error in 18.91 seconds 
  doCheck = false;
  checkPhase = ''
    export NO_TESTS_OVER_WIRE=1
    export PYTHONDONTWRITEBYTECODE=1

    flake8 scriptworker
    py.test --cov=scriptworker --cov-report term-missing
    coverage html
  '';
  passthru.python = python;
}
