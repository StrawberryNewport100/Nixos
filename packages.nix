
{ config, pkgs, pkgs-unstable, ... }:

{
    
  environment.systemPackages = 
     (with pkgs; [

              vim
              wget
              neovim
              curl 
              git 
              neofetch
              gcc 
              libstdcxx5
              tmux 
              htop
             cargo
             fzf
             keepassxc
            #yackages 

      ])
     ++
     (with pkgs-unstable; [
            alacritty
     ]);
  


  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
