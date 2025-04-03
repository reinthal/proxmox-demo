{pkgs, ...}: {
  env.GREET = "devenv";

  packages = with pkgs; [
    git
    opentofu
    sops
    delve
    marp-cli
  ];

  languages.go.enable = true;

  scripts.hello.exec = ''
    echo ☁☁☁ Build Your Own Cloud ☁☁☁
  '';

  enterShell = ''
    hello
  '';
}
