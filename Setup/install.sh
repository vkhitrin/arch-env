#!/usr/bin/env bash

set -eo pipefail

# Function which prints an error message and then returns exit code 1
function error_exit {
    echo "$1" >&2
    exit "${2:-1}"
}

function print_padded_title {
    termwidth="$(tput cols)"
    padding="$(printf '%0.1s' ={1..500})"
    printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}

if [[ $(uname) != "Linux" ]];then
    error_exit "Please make sure you're running on Linux"
fi

print_padded_title "Pacman - Upgrade"
sudo pacman -Syyu --noconfirm

print_padded_title "Pacman - Install Packages"
sudo pacman -S --needed --noconfirm - < Setup/pkglist.txt

# Backup current dotfiles
print_padded_title "Config - Restore .zshrc"
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bk

print_padded_title "Config - Restore Files"
# Copy dotfiles to home directory
cp -r -f .zshenv .zshrc .config .tmux.conf ~
touch $HOME/.zsh_history

# Upgrade pip
print_padded_title "Python - Install Packages On System's Python"
/usr/bin/python3 -m pip install pip lxml

print_padded_title "cargo - Install rtx"
cargo install rtx-cli

print_padded_title "neovim - Install Plugin Manager 'vim-plug'"
# Install vim-plug
[ -f $HOME/.local/share/nvim/site/autoload/plug.vim ] || sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

print_padded_title "neovim - Install Plugins"
nvim --headless +PlugInstall +qall

# Install Tmux Plugin Manager
print_padded_title "tmux - Install Plugin Manager 'tpm'"
[ -d $HOME/.tmux/plugins/tpm ] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

print_padded_title "tmux - Install Plugins"
$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh
