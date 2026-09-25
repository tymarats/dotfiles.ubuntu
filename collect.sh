#!/usr/bin/env bash

for i in .zshrc .vim .vimrc ; do
	cp -rf ~/$i . 
done

