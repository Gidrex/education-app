{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    rustup cargo gcc
    flutter

    # Comfortable usability
    nushell
    binutils
];

  shellHook = ''
    exec nu
  '';
}

