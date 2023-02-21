#!/bin/bash -e

source /verbis/functions.sh

verbis_defaults_main
verbis_defaults_rust

verbis_symlink_cache_dir git

sudo apt update && sudo apt install -y stow
stow -t ~ gitconfig
