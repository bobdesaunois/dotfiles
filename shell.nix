{
  pkgs ? import <nixpkgs> {}
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # productivity
    zellij
    helix
    git
    wget
    neofetch
    btop
    bat

    # C/C++
    clang
    gcc
    gnumake42
    gdb
    valgrind
    raylib

    # Gamedev
    blockbench
    blender
    
    # dotnet
    dotnet
    dotnet-sdk_8
    dotnetCorePackages.runtime_8_0
    monodevelop
    mono
    nuget
    
  ];

  shellHook = ''
    echo "Zellij and Helix development environment"
    echo "Zellij version: $(zellij --version)"
    echo "Helix version: $(hx --version)"
  '';
} 
