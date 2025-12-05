{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    minegrub-theme.url = "github:Lxtharia/minegrub-theme";
    #hyprpanel.url = "github:jas-singhfsu/hyprpanel";
    #hyprpanel.inputs.nixpkgs.follows = "nixpkgs";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }@inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      #overlays = [
      #  inputs.hyprpanel.overlay
      #];
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit system;
        inherit inputs;
      };
      modules = [
        ./configuration.nix
	./hardware-configuration.nix
	./users
	./defaults
	./programs
	./services
        inputs.minegrub-theme.nixosModules.default
        home-manager.nixosModules.home-manager
	{
          home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
	  home-manager.users.robert = import ./users/robert.nix;
	  home-manager.users.gaming = import ./users/gaming.nix;
	}
      ];
    };
  };
}
