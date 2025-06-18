{ pkgs, inputs, ...}: {
  
   nixpkgs.config.allowUnfree = true;

   environment.systemPackages = with pkgs; [];

   nixpkgs.config.permittedInsecurePackages = [
     "openssl-1.1.1w"
    ];
}
