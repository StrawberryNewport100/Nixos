## Laptop Config for NixOS


**WM**: Sway

**Term**: Alacritty 

**Editor**: nvim 


Still learning Nix.

*to err is human, to forgive is divine*


nvim config is garbo but works for me so just sub it out for your own 

waybar config is mostly stolen from a dude on reddit (i will credit if I can find him) 

I don't think this is necessarily how home manager is supposed to be used but I want to keep the dotfiles as is for portability 

My Alacritty colors are based off of my favorite neovim theme citruszest: 
https://github.com/zootedb0t/citruszest.nvim

I am using --impure to flake because I don't want the hardware-configuration.nix to be in the repo

## TODO: 
- make an install script
- expand functionality of the waybar config
  - network management
  - better volume controls
  - better hover for ram/cpu
  
