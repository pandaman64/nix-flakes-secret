{
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.secret = nixpkgs.legacyPackages.x86_64-linux.writeText "secret" (builtins.readFile ./secret);
  };
}
