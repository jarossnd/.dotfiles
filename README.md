# .dotfiles

## Overview

This repo contains my dotfiles for my Ubuntu installation using Alacritty, Neovim, Treesitter, [Catppuccin](https://github.com/catppuccin/nvim) (theme), and [barbar](https://github.com/romgrk/barbar.nvim) (tabs). I also use these dotfiles for my Ubuntu WSL installation at work since my primary OS at work is Windows. This allows me to still use Unix / Linux based utilities when working on Windows.

## Prerequisites

Make sure our system is up-to-date:

```bash
sudo apt update
```

Install applications:

```bash
sudo apt install neovim ripgrep stow gh sc-im -y
```

Install dev tools:

```bash
sudo apt update && sudo apt install build-essential -y
```

## Shell

Install zsh:

```bash
sudo apt install zsh -y
```

Install Oh My Zsh:

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
Allow the default shell to be zsh then confirm shell is set to zsh:

```bash
echo $SHELL
```

## Terminal

- Alacritty (When Ubuntu is our host machine)
- Windows Terminal (When Windows is our host machine and using WSL)

## Installing Dotfiles

Removing the default zshrc file to be replace by the one from my dotfiles

```bash
mv ~/.zshrc ~/.zshrc_old
```

Download dotfiles

```bash
cd ~
git clone --recursive https://github.com/jarossnd/.dotfiles-work
cd .dotfiles-work
```

Set executable permissions on the install scripts:

```bash
chmod 755 install
chmod 755 ubuntu
```

Run the ubuntu script to stow files

```bash
./ubuntu
```

Source for zshrc file

```bash
omz reload
```

## Install Packer for Neovim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Run PackerSync

It is best to run the next commands one by one. First, we will start with changing directories:

```bash
cd ~/.config/nvim/lua/jaross
```

Open our packer.lua file in Neovim:

```bash
nvim packer.lua
```

Next we will source the packer.lua file so that Neovim will execute the contents of this file:

```bash
:so
```

Last, we will sync our plugins:

```bash
:PackerSync
```

## WSL Notes

### Notes around settings

When uinsg with WSL:

- Windows Terminal Theme https://github.com/catppuccin/windows-terminal
- FiraCode Nerd Font https://www.nerdfonts.com/font-downloads
- Font Size 14

### Find WSL Installations

```powershell
wsl --list
```

### Delete WSL Installations

```powershell
wsl --unregister Ubuntu
```

### Install WSL Installations

```powershell
wsl --install
```

## Making Changes

## Nvim Submodule

Navigate to the submodule directory and commit your changes:

```bash
cd path/to/submodule
git add .
git commit -m "Your commit message"
```
Push the changes to the submodule's remote repository:

```bash
git push origin main
```

Navigate back to the parent repository:

```bash
cd ..
```

Update the submodule reference in the parent repository:

```bash
git add path/to/submodule
git commit -m "Update submodule to latest commit"
```

Push the changes to the parent repository's remote:

```bash
git push origin main
```
