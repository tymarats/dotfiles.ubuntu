#!/bin/sh

set FILES=".vimrc .vim/ .dircolors* .bashrc .bash_profile .bash_aliases .bash_logout"

cp -rf ~/$FILES ~/dotfiles.ubuntu

ls .vim/plugged/ | grep -v .gitkeep | xargs rm

