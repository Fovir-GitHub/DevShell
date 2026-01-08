{
  description = "DevShell for C/C++";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    clangdConfig = pkgs.writeText ".clangd" ''
      CompileFlags:
        Add:
          - -isystem${pkgs.glibc.dev}/include
          - -isystem${pkgs.libcxx.dev}/include/c++/v1
          - -isystem${pkgs.clang}/resource-root/include
          - -stdlib=libc++
          - -std=c++17
    '';
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        bear
        cgdb
        clang
        clang-tools
        cmake
        gdb
        gnumake
        libcxx
      ];
      shellHook = ''
        echo "Entering the development environment!"
        ln -sf ${clangdConfig} .clangd
      '';
    };
  };
}
