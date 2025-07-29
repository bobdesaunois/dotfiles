{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = [
    pkgs.wget
    pkgs.raylib
  ];
  shellHook = ''
    FILE="libs/raygui.h"  # Replace with the path to your file
    URL="https://github.com/raysan5/raygui/blob/master/src/raygui.h"  # Replace with the URL to download from

    if [ ! -f "$FILE" ]; then
      echo "File $FILE not found, downloading..."
      mkdir libs
      ${pkgs.wget}/bin/wget -O "$FILE" "$URL"
    else
      echo "File $FILE already exists"
    fi
  '';
}
