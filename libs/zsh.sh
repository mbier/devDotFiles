#!/usr/bin/env bash

function __add_zsh() {
    if ! type zsh >> /dev/null;then
        echo "Installing Zsh"
        sudo dnf install zsh
        sudo dnf install chsh
        chsh -s $(which zsh)
    else
        echo "ZSH already installed"
    fi
}