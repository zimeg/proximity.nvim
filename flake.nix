{
  description = "some dependencies for fast movement";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            gnumake
            luajit
            luajitPackages.busted
            neovim
          ];
        };
        packages = {
          proximity-nvim = pkgs.vimUtils.buildVimPlugin {
            name = "proximity.nvim";
            src = ./.;
            version = "0.1.0";
            propogatedBuildInputs = with pkgs; [
              luajit
            ];
          };
        };
      });
}
