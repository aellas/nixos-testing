{
  description = "NixOS configuration managed with flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixcord.url = "github:kaylorben/nixcord";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, nixos-hardware, home-manager, ... }:
    let
      system = "x86_64-linux";

      mkNixosConfig = { name, hardwareModule, extraModules ? [] }:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; host = name; };

          modules = [
            ./hosts/${name}/default.nix
            ./modules/system/boot.nix
            ./modules/system/fonts.nix
            ./modules/system/packages.nix
            ./modules/system/network.nix
            ./modules/system/services.nix
            ./modules/system/security.nix
            ./modules/system/system.nix
            ./modules/system/users.nix
            ./modules/services/gnome-keyring.nix
            ./modules/apps/thunar.nix


            hardwareModule

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.array = import ./home/home.nix;
              home-manager.sharedModules = [
                inputs.nixcord.homeModules.nixcord
                inputs.nixvim.homeModules.nixvim
              ];
            }
          ] ++ extraModules;
        };

    in
    {
      nixosConfigurations = {
        "thinknix" = mkNixosConfig {
          name = "thinknix";
          hardwareModule = nixos-hardware.nixosModules.lenovo-thinkpad-x390;
          extraModules = [ 
            ./modules/services/thinkfan.nix  
            ./modules/services/thinktlp.nix
            ./modules/services/qtile/default.nix 
            ./modules/services/greenclip.nix
            ];
        };

        "xpsnix" = mkNixosConfig {
          name = "xpsnix";
          hardwareModule = nixos-hardware.nixosModules.dell-xps-13-7390;
        };
        "arynix" = mkNixosConfig {
          name = "arynix";
          extraModules = [ 
            ./modules/system/docker.nix
            ./modules/services/qtile/default.nix 
            ];
      };
    };
  };
}
