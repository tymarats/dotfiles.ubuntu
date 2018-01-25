#!/bin/bash

FILES=$(find . -type d -name '.git' -prune -o -print | sed -re "s/\.+\///" -e "/^\.$/d")

set -e

for file in $FILES
do
	if [ -f ~/$file ]
	then
		cp -rf ~/$file $file
	fi
done

