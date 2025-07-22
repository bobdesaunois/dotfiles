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
    lldb

    # Gamedev
    blockbench
    blender
    
    # dotnet
    dotnet-sdk_8
    dotnetCorePackages.runtime_8_0
    mono
    nuget
    omnisharp-roslyn
       
  ];

  shellHook = ''
    echo "Zellij and Helix development environment"
    echo "Zellij version: $(zellij --version)"
    echo "Helix version: $(hx --version)"
  '';
} 
