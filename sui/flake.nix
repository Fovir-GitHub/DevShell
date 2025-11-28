{
  description = "Devshehll for SUI";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      # Add packages here.
      buildInputs = with pkgs; [
        cargo
        clippy
        cmake
        curl
        gcc
        git
        libclang
        llvmPackages.clang
        openssl
        openssl.dev
        pkg-config
        postgresql
        protobuf
        rust-analyzer
        rustc
        rustfmt
      ];

      LIBCLANG_PATH = "${pkgs.llvmPackages.libclang.lib}/lib";
      BINDGEN_EXTRA_CLANG_ARGS = "-I${pkgs.llvmPackages.clang}/resource-root/include";
      PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";

      # Shell hooks.
      shellHook = ''
        echo "Entering the development environment!"
        cargo install --locked --git https://github.com/MystenLabs/sui.git --branch testnet sui --features tracing
        export PATH=$HOME/.cargo/bin:$PATH
      '';
    };
  };
}
