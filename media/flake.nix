{
  inputs = {
    genericNixConfig.url = "github:staticdev/nixconfig";
  };
  outputs = { self, genericNixConfig }: {
    nixosConfigurations.media = genericNixConfig.inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ (import "${genericNixConfig}/media/configuration.nix") ];
    };
  };
}
