#!/usr/bin/env fish

# Variables for source and dest paths
set --local home ~
set --local src (pwd)

# Symlink /.config files to home (not dirs)
ln -s $src/.config/. $home

# For neovim
mkdir -p $home/.config/nvim
ln -s $src/.config/nvim/* $home/.config/nvim

# For vim - requires symlinking site and nvim files to ~/.vim
mkdir -p $home/.local/share/nvim/site
mkdir -p $home/.vim
ln -s $home/.local/share/nvim/site $home/.vim
ln -s $src/.config/nvim/* $home/.vim
ln -s $src/.config/nvim/init.vim $home/.vimrc
