{
  description = "Somatic Linux";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  };

  system.build.toplevel = {
    imports = [ ];

    environment.systemPackages = with pkgs; [
      go
      rustc
      cargo
      zerotier
      btop
      htop
      vim
      git
      screen
    ];

    # YOU CAN CONFIGURE SSH HERE, BUT WE AREN'T THERE YET
    # services.openssh.enable = true;
    # users.users.root.openssh.authorizedKeys.keys = [ "your-ssh-public-key" ];
  };
}