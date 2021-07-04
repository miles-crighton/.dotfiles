#!/usr/bin/env fish

# Variables for source and dest paths
set --local home ~
set --local src (pwd)

# Symlink /.config files to home (not dirs)
ln -s $src/home-dots/.* $home
# ln -s $src/.config/**/* $home/.config/
