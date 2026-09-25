#!/usr/bin/env bash

set -e

for i in .zshrc .vim .vimrc ; do
	cp -rf $i ~/
done

cd ~/

if [[ "$OSTYPE" == darwin* ]]; then
	brew install nvm
	brew install pure
else
	sudo apt-get install -y zsh
	[ -d .zsh/pure ] || git clone https://github.com/sindresorhus/pure.git .zsh/pure
	[ -d .nvm ] || PROFILE=/dev/null bash -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh)"
	[ "$(basename "$SHELL")" = zsh ] || chsh -s "$(command -v zsh)"
fi

[ -d .zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .zsh-syntax-highlighting
