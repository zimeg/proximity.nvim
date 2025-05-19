{
  description = "some dependencies for fast movement";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs =
    { nixpkgs, ... }:
    let
      each =
        function:
        nixpkgs.lib.genAttrs [
          "x86_64-darwin"
          "x86_64-linux"
          "aarch64-darwin"
          "aarch64-linux"
        ] (system: function nixpkgs.legacyPackages.${system});
    in
    {
      devShells = each (pkgs: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            gnumake
            luajit
            luajitPackages.busted
            neovim
          ];
        };
      });
      packages = each (pkgs: {
        default = pkgs.vimUtils.buildVimPlugin {
          name = "proximity.nvim";
          src = ./.;
          version = "unversioned";
        };
      });
    };
}
