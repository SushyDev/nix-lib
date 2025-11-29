{
	description = "Sushy's nix lib";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	};

	outputs = { self, nixpkgs }@inputs:
		let
		in
		{
			platforms = {
				default = [ "aarch64-darwin" "aarch64-linux" "x86_64-linux" ];
			};
			forPlatforms = platforms: nixpkgs.lib.genAttrs platforms;
		};
}
