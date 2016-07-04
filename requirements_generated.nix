# generated using pypi2nix tool (version: 1.2.0)
#
# COMMAND:
#   pypi2nix -r requirements.txt -V 3.5
#

{ pkgs, python, commonBuildInputs ? [], commonDoCheck ? false }:

self: {

  "aiohttp" = python.mkDerivation {
    name = "aiohttp-0.22.0a0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/88/10/ba7c03e3cb827efa05cb57e3969a1de002d61497b5941f691af970f07c48/aiohttp-0.22.0a0.tar.gz";
      md5= "893f6dadb4aace809be7bde537a69ecb";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."chardet"
    self."multidict"
  ];
    meta = {
      homepage = "";
      license = "Apache 2";
      description = "http client/server for asyncio";
    };
  };



  "apipkg" = python.mkDerivation {
    name = "apipkg-1.4";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/32/37/6ce6dbaa8035730efa95e60b09498ec17000d137742391ff46974d9ef859/apipkg-1.4.tar.gz";
      md5= "17e5668601a2322aff41548cb957e7c8";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "MIT License";
      description = "apipkg: namespace control and lazy-import mechanism";
    };
  };



  "arrow" = python.mkDerivation {
    name = "arrow-0.8.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/58/91/21d65af4899adbcb4158c8f0def8ce1a6d18ddcd8bbb3f5a3800f03b9308/arrow-0.8.0.tar.gz";
      md5= "4dd7534cf32bc9e4fd8d8ab2f7401363";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."python-dateutil"
  ];
    meta = {
      homepage = "";
      license = "lib.asl20";
      description = "Better dates and times for Python";
    };
  };



  "chardet" = python.mkDerivation {
    name = "chardet-2.3.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/7d/87/4e3a3f38b2f5c578ce44f8dc2aa053217de9f0b6d737739b0ddac38ed237/chardet-2.3.0.tar.gz";
      md5= "25274d664ccb5130adae08047416e1a8";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "LGPL";
      description = "Universal encoding detector for Python 2 and 3";
    };
  };



  "coverage" = python.mkDerivation {
    name = "coverage-4.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/2d/10/6136c8e10644c16906edf4d9f7c782c0f2e7ed47ff2f41f067384e432088/coverage-4.1.tar.gz";
      md5= "80e63edaf49f689d304898fafc1007a5";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.asl20";
      description = "Code coverage measurement for Python";
    };
  };



  "defusedxml" = python.mkDerivation {
    name = "defusedxml-0.4.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/09/3b/b1afa9649f48517d027e99413fec54f387f648c90156b3cf6451c8cd45f9/defusedxml-0.4.1.tar.gz";
      md5= "230a5eff64f878b392478e30376d673a";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "PSFL";
      description = "XML bomb protection for Python stdlib modules";
    };
  };



  "execnet" = python.mkDerivation {
    name = "execnet-1.4.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/eb/ee/43729e7dee8772e69b3b01715ab9742790be2eace2d18cf53d219b9c31f8/execnet-1.4.1.tar.gz";
      md5= "0ff84b6c79d0dafb7e2971629c4d127a";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."apipkg"
  ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "execnet: rapid multi-Python deployment";
    };
  };



  "flake8" = python.mkDerivation {
    name = "flake8-2.6.2";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/53/0a/b2c28a77dfc508ed9f7334252311e1aaf8f0ceaaeb1a8f15fa4ba3e2d847/flake8-2.6.2.tar.gz";
      md5= "cf4f63730fd35e736a8a99583b9158fd";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."mccabe"
    self."pycodestyle"
    self."pyflakes"
  ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "the modular source code checker: pep8, pyflakes and co";
    };
  };



  "frozendict" = python.mkDerivation {
    name = "frozendict-0.6";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/ad/15/464e126260c0dd9ade67df7ec3ad8a75e23c51bb5bb604d48e274cfc9b19/frozendict-0.6.tar.gz";
      md5= "d8d6c488b81987356f674fb1c9a68ebb";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "MIT License";
      description = "An immutable dictionary";
    };
  };



  "jsonschema" = python.mkDerivation {
    name = "jsonschema-2.5.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/58/0d/c816f5ea5adaf1293a1d81d32e4cdfdaf8496973aa5049786d7fdb14e7e7/jsonschema-2.5.1.tar.gz";
      md5= "374e848fdb69a3ce8b7e778b47c30640";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "An implementation of JSON Schema validation for Python";
    };
  };



  "mccabe" = python.mkDerivation {
    name = "mccabe-0.5.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/57/fa/4a0cda4cf9877d2bd12ab031ae4ecfdc5c1bbb6e68f3fe80da4f29947c2a/mccabe-0.5.0.tar.gz";
      md5= "8304dc8dc2c7e0b15912e2638ee21c0a";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "Expat license";
      description = "McCabe checker, plugin for flake8";
    };
  };



  "mock" = python.mkDerivation {
    name = "mock-2.0.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/0c/53/014354fc93c591ccc4abff12c473ad565a2eb24dcd82490fae33dbf2539f/mock-2.0.0.tar.gz";
      md5= "0febfafd14330c9dcaa40de2d82d40ad";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."pbr"
    self."six"
  ];
    meta = {
      homepage = "";
      license = "";
      description = "Rolling backport of unittest.mock for all Pythons";
    };
  };



  "mohawk" = python.mkDerivation {
    name = "mohawk-0.3.2.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/4e/1a/33a5a96fe29d3ae38be45d7cb02d9340bd9cb5fdf924e91b39cf2c87b8ed/mohawk-0.3.2.1.tar.gz";
      md5= "733d2ef982fb6140cd656062a80cf331";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."six"
  ];
    meta = {
      homepage = "";
      license = "MPL 2.0 (Mozilla Public License)";
      description = "Library for Hawk HTTP authorization";
    };
  };



  "multidict" = python.mkDerivation {
    name = "multidict-1.0.3";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/f3/59/091af1c241e1157e3060f2a36f2b1677f11bd11d107cf5ad0abc40db9ada/multidict-1.0.3.tar.gz";
      md5= "de73233f7e2ede60d513dcd84b20a0b8";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "Apache 2";
      description = "multidict implementation";
    };
  };



  "pbr" = python.mkDerivation {
    name = "pbr-1.10.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/c3/2c/63275fab26a0fd8cadafca71a3623e4d0f0ee8ed7124a5bb128853d178a7/pbr-1.10.0.tar.gz";
      md5= "8e4968c587268f030e38329feb9c8f17";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "";
      description = "Python Build Reasonableness";
    };
  };



  "py" = python.mkDerivation {
    name = "py-1.4.31";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/f4/9a/8dfda23f36600dd701c6722316ba8a3ab4b990261f83e7d3ffc6dfedf7ef/py-1.4.31.tar.gz";
      md5= "5d2c63c56dc3f2115ec35c066ecd582b";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "MIT license";
      description = "library with cross-python path, ini-parsing, io, code, log facilities";
    };
  };



  "pycodestyle" = python.mkDerivation {
    name = "pycodestyle-2.0.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/db/b1/9f798e745a4602ab40bf6a9174e1409dcdde6928cf800d3aab96a65b1bbf/pycodestyle-2.0.0.tar.gz";
      md5= "733291d308def897c0c48c7840b7f6bc";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "Expat license";
      description = "Python style guide checker";
    };
  };



  "pyflakes" = python.mkDerivation {
    name = "pyflakes-1.2.3";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/54/80/6a641f832eb6c6a8f7e151e7087aff7a7c04dd8b4aa6134817942cdda1b6/pyflakes-1.2.3.tar.gz";
      md5= "995747589e97c75055cf5b4e1e031e0b";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "passive checker of Python programs";
    };
  };



  "pytest" = python.mkDerivation {
    name = "pytest-2.9.2";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/f0/ee/6e2522c968339dca7d9abfd5e71312abeeb5ee902e09b4daf44f07b2f907/pytest-2.9.2.tar.gz";
      md5= "b65c2944dfaa0efb62c0239afb424f5b";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."py"
  ];
    meta = {
      homepage = "";
      license = "MIT license";
      description = "pytest: simple powerful testing with Python";
    };
  };



  "pytest-asyncio" = python.mkDerivation {
    name = "pytest-asyncio-0.3.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/e7/fd/244ef1e081fedc86abead679aa28367e712e04eafc948d39ca5d18cdf5ba/pytest-asyncio-0.3.0.tar.gz";
      md5= "c7302e5be0bc915ee6873f00ffe5dff9";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."pytest"
  ];
    meta = {
      homepage = "";
      license = "lib.asl20";
      description = "Pytest support for asyncio.";
    };
  };



  "pytest-cov" = python.mkDerivation {
    name = "pytest-cov-2.2.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/39/07/bdd2d985ae7ac726cc5e7a6a343b585570bf1f9f7cb297a9cd58a60c7c89/pytest-cov-2.2.1.tar.gz";
      md5= "d4c65c5561343e6c6a583d5fd29e6a63";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."coverage"
    self."pytest"
  ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "Pytest plugin for measuring coverage.";
    };
  };



  "pytest-mock" = python.mkDerivation {
    name = "pytest-mock-1.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/99/0e/45906c1e876b175cb51d8710075be900948f44a5f6a92c90095bdcd846c8/pytest-mock-1.1.zip";
      md5= "671c00dbbffee75d197eeec38c9bee91";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."mock"
    self."pytest"
  ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "Thin-wrapper around the mock package for easier use with py.test";
    };
  };



  "pytest-xdist" = python.mkDerivation {
    name = "pytest-xdist-1.14";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/9e/df/434c91ac13e96dae9bf519eb4d606d99beac835c7f859d2bca923dbb6b80/pytest-xdist-1.14.zip";
      md5= "958699a0487226505470e984f1843329";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."execnet"
    self."py"
    self."pytest"
  ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "py.test xdist plugin for distributed testing and loop-on-failing modes";
    };
  };



  "python-dateutil" = python.mkDerivation {
    name = "python-dateutil-2.5.3";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/3e/f5/aad82824b369332a676a90a8c0d1e608b17e740bbb6aeeebca726f17b902/python-dateutil-2.5.3.tar.gz";
      md5= "05ffc6d2cc85a7fd93bb245807f715ef";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."six"
  ];
    meta = {
      homepage = "";
      license = "Simplified BSD";
      description = "Extensions to the standard Python datetime module";
    };
  };



  "requests" = python.mkDerivation {
    name = "requests-2.10.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/49/6f/183063f01aae1e025cf0130772b55848750a2f3a89bfa11b385b35d7329d/requests-2.10.0.tar.gz";
      md5= "a36f7a64600f1bfec4d55ae021d232ae";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.asl20";
      description = "Python HTTP for Humans.";
    };
  };



  "setuptools-scm" = python.mkDerivation {
    name = "setuptools-scm-1.11.1";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/84/aa/c693b5d41da513fed3f0ee27f1bf02a303caa75bbdfa5c8cc233a1d778c4/setuptools_scm-1.11.1.tar.gz";
      md5= "4d19b2bc9580016d991f665ac20e2e8f";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "the blessed package to manage your versions by scm tags";
    };
  };



  "six" = python.mkDerivation {
    name = "six-1.10.0";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz";
      md5= "34eed507548117b2ab523ab14b2f8b55";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "Python 2 and 3 compatibility utilities";
    };
  };



  "slugid" = python.mkDerivation {
    name = "slugid-1.0.7";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/dd/96/b05c6d357f8d6932bea2b360537360517d1154b82cc71b8eccb70b28bdde/slugid-1.0.7.tar.gz";
      md5= "2af844a4dd0d33c9638c473c78d3a0da";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "MPL 2.0";
      description = "Base64 encoded uuid v4 slugs";
    };
  };



  "taskcluster" = python.mkDerivation {
    name = "taskcluster-0.3.4";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/3e/50/bb7659d5cf396f5c78013bb35ac92931c852b0ae3fa738bbd9224b6192ef/taskcluster-0.3.4.tar.gz";
      md5= "dab9bc216d499a3d19fc1ad2136aa299";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [
    self."aiohttp"
    self."mohawk"
    self."requests"
    self."six"
    self."slugid"
  ];
    meta = {
      homepage = "";
      license = "";
      description = "Python client for Taskcluster";
    };
  };



  "virtualenv" = python.mkDerivation {
    name = "virtualenv-15.0.2";
    src = pkgs.fetchurl {
      url = "https://pypi.python.org/packages/5c/79/5dae7494b9f5ed061cff9a8ab8d6e1f02db352f3facf907d9eb614fb80e9/virtualenv-15.0.2.tar.gz";
      md5= "0ed59863994daf1292827ffdbba80a63";
    };
    doCheck = commonDoCheck;
    buildInputs = commonBuildInputs;
    propagatedBuildInputs = [ ];
    meta = {
      homepage = "";
      license = "lib.mit";
      description = "Virtual Python Environment builder";
    };
  };

}