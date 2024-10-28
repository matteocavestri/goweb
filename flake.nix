{
  description = "Development environment for Go Full Stack WebApp";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    systems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];
    forAllSystems = f: nixpkgs.lib.genAttrs systems f;
  in {
    devShells = forAllSystems (system: {
      default = let
        pkgs = import nixpkgs {inherit system;};
      in
        pkgs.mkShell {
          buildInputs = with pkgs; [
            go
            templ
            gnumake
            entr
            bun
          ];
          shellHook = ''
            alias nevica="nix run github:matteocavestri/nevica#nevica-goweb"
            echo "Development environment for Go Web Dev Stack"
            echo "Use nevica IDE if you want a full development experience"
          '';
        };
    });
  };
}
