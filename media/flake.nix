{
  inputs = {
    genericNixConfig.url = "github:staticdev/nixconfig";
  };
  outputs = { self, genericNixConfig }: {
    nixosConfigurations.media = genericNixConfig.inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ 
        (import "${genericNixConfig}/media/configuration.nix") 
        ./hardware-configuration.nix
        # based on https://github.com/JupiterBroadcasting/nixconfigs/blob/main/nextcloud.nix
        ./nextcloud.nix
      ];
    };
  };
}
