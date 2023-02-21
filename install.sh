#!/bin/bash -e

source /verbis/functions.sh

mkdir -p ~/git ~/.ssh

ssh-keyscan github.com >> ~/.ssh/known_hosts

sudo apt update && sudo apt install -y stow
stow -t ~ gitconfig
install_vscode_extensions rust-lang.rust-analyzer vadimcn.vscode-lldb serayuzgur.crates
