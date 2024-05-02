{ config, pkgs, ... }:

{
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
#  services.openssh.enable = true;
#  users.users.root.openssh.authorizedKeys.keys = [ "your-ssh-public-key" ];
}
