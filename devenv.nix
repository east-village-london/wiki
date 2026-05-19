{ pkgs, lib, config, inputs, ... }:

{
  languages.python = {
    enable = true;
    venv.enable = true;
    venv.requirements = ''
      zensical
    '';
  };

  scripts.serve.exec = "zensical serve";
  scripts.build.exec = "zensical build --strict";

  enterShell = ''
    echo "East Village London Wiki - dev environment ready"
    echo "  serve  → start a live-reloading preview of the wiki at http://localhost:8000"
    echo "  build  → build the static site into site/"
  '';

  cachix.enable = false;
}
