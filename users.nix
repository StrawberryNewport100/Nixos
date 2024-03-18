{ config, pkgs, pkgs-unstable, ... }:
{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.rigby = {
    isNormalUser = true;
    description = "rigby";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    packages = with pkgs; [
      firefox
    ];
  };
}
