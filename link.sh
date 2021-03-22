#!/usr/bin/env fish

# Variables for source and dest paths
set --local home ~
set --local src (pwd)

# Symlink /.config
ln -s $src/.config/* $home